




#include "chainOnPath.h"
#include <maya/MPxNode.h>
#include <maya/MFnTypedAttribute.h>
#include <maya/MFnNumericAttribute.h>
#include <maya/MGlobal.h>
#include <maya/MFnGenericAttribute.h>
#include <maya/MFnDependencyNode.h>
#include <maya/MPoint.h>
#include <maya/MPointArray.h>

#include <maya/MMatrix.h>
#include <maya/MEulerRotation.h>
#include <maya/MFnMatrixAttribute.h>
#include <maya/MFnGenericAttribute.h>
#include <maya/MFnData.h>
#include <maya/MFnUnitAttribute.h>
#include <maya/MFnEnumAttribute.h>

#include <string>
const double toDeg = 57.295779513082320876798154814105;

//Needed attributes



using namespace std;

MTypeId chainOnPath::typeId( 0x912000 );

MObject chainOnPath::inCurve;
MObject chainOnPath::inSurface;

MObject chainOnPath::numberOfoutputs;
MObject chainOnPath::paramValues;
MObject chainOnPath::outputTranslateX;
MObject chainOnPath::outputTranslateY;
MObject chainOnPath::outputTranslateZ;
MObject chainOnPath::outputTranslate;
MObject chainOnPath::outputRotateX;
MObject chainOnPath::outputRotateY;
MObject chainOnPath::outputRotateZ;
MObject chainOnPath::outputRotate;
MObject chainOnPath::paramAs;
MObject chainOnPath::stretchToFitLength;
MObject chainOnPath::defaultCurveLength;
MObject chainOnPath::reverseRoot;


//Class
chainOnPath::chainOnPath(){

	initParams = 0;
	initCurve = 0;
	initSurface = 0;
	paramsV = 0;
	crvLen = 0;
	rotOrder =MTransformationMatrix::kXYZ;
	uVal =0.0;
	inParam = 0;
	inParamStretched = 0.0;
	inParamReversed = 0.0;
	MPoint outP;
	reversed = 0.0 ;
	finalParam = 0.0;
	

}

void* chainOnPath::creator()
{

	return new chainOnPath();
}

MStatus chainOnPath::initialize()
	{ 

	    MFnTypedAttribute typedFn;
		MFnCompoundAttribute compund;
		MFnNumericAttribute numFn;
		MFnMatrixAttribute    matrixFn;
		MFnUnitAttribute    uAttr;
		MFnEnumAttribute    eAttr;


		//Inputs 
		inCurve  = typedFn.create( "inCurve", "ic", MFnData::kNurbsCurve );
		addAttribute(inCurve);

		inSurface  = typedFn.create( "inSurface", "is", MFnData::kNurbsSurface );
		addAttribute(inSurface);


		numberOfoutputs = numFn.create("numberOfOutputs","noo",MFnNumericData::kInt,1);
		numFn.setMin(0);
		numFn.setStorable(true);
		numFn.setKeyable(true);
		addAttribute(numberOfoutputs);


		paramValues = numFn.create("paramValues","prv",MFnNumericData::kDouble,0);
		numFn.setArray(true);
		numFn.setStorable(true);
		numFn.setKeyable(true);
		addAttribute(paramValues);

		defaultCurveLength = numFn.create("defaultCurveLength","dcl",MFnNumericData::kDouble,0);

		numFn.setStorable(true);
		numFn.setKeyable(true);
		addAttribute(defaultCurveLength);


		stretchToFitLength = numFn.create("stretchToFitLength","stfl",MFnNumericData::kDouble,0);
		numFn.setMin(0);
		numFn.setMax(1);
		numFn.setStorable(true);
		numFn.setKeyable(true);
		addAttribute(stretchToFitLength);


		reverseRoot = numFn.create("reverseRoot","rvr",MFnNumericData::kDouble,0);
		numFn.setMin(0);
		numFn.setMax(1);
		numFn.setStorable(true);
		numFn.setKeyable(true);
		addAttribute(reverseRoot);


		paramAs = eAttr.create("paramAs" , "pras" ,0);
		eAttr.addField("u", 0);
		eAttr.addField("len" , 1);
		eAttr.setKeyable(true);
		eAttr.setStorable(true);
		addAttribute(paramAs);


		//Outputs 
		outputTranslateX = numFn.create("outputTranslateX","otx",MFnNumericData::kDouble,0);
		numFn.setStorable(false);
		numFn.setKeyable(false);
		numFn.setWritable(false);
		addAttribute(outputTranslateX);

		outputTranslateY = numFn.create("outputTranslateY","oty",MFnNumericData::kDouble,0);
		numFn.setStorable(false);
		numFn.setWritable(false);
		numFn.setKeyable(false);
		addAttribute(outputTranslateY);
    

		outputTranslateZ = numFn.create("outputTranslateZ","otz",MFnNumericData::kDouble,0);
		numFn.setStorable(false);
		numFn.setKeyable(false);
		numFn.setWritable(false);
		addAttribute(outputTranslateZ);

    
		outputTranslate= compund.create("outputTranslate","ot");
		compund.addChild(outputTranslateX);
		compund.addChild(outputTranslateY); 
		compund.addChild(outputTranslateZ);
		compund.setStorable(false);
		compund.setKeyable(false);
		compund.setWritable(false);
		compund.setArray(true);
		addAttribute(outputTranslate);
    
    
		outputRotateX = uAttr.create("outputRotateX","orx",MFnUnitAttribute::kAngle,0.0);
		numFn.setStorable(false);
		numFn.setWritable(false);
		numFn.setKeyable(false);
		addAttribute(outputRotateX);

		outputRotateY = uAttr.create("outputRotateY","ory",MFnUnitAttribute::kAngle,0.0);
		numFn.setStorable(false);
		numFn.setKeyable(false);
		numFn.setWritable(false);

		addAttribute(outputRotateY);
    

		outputRotateZ = uAttr.create("outputRotateZ","orz",MFnUnitAttribute::kAngle,0.0);
		numFn.setStorable(false);
		numFn.setKeyable(false);
		numFn.setWritable(false);
    
		addAttribute(outputRotateZ);

    
		outputRotate= compund.create("outputRotate","or");
		compund.addChild(outputRotateX);
		compund.addChild(outputRotateY); 
		compund.addChild(outputRotateZ);
		compund.setStorable(false);
		compund.setKeyable(false);
		compund.setWritable(false);
		compund.setArray(true);
		addAttribute(outputRotate);


		attributeAffects (inCurve , outputTranslate);
		attributeAffects (inCurve , outputRotate);

		attributeAffects (inSurface , outputTranslate);
		attributeAffects (inSurface , outputRotate);


		attributeAffects (stretchToFitLength , outputTranslate);
		attributeAffects (stretchToFitLength , outputRotate);

		attributeAffects (reverseRoot , outputTranslate);
		attributeAffects (reverseRoot , outputRotate);


		attributeAffects (numberOfoutputs , outputTranslate);
		attributeAffects (numberOfoutputs , outputRotate);

		attributeAffects (defaultCurveLength , outputTranslate);
		attributeAffects (defaultCurveLength , outputRotate);



		attributeAffects (paramValues , outputTranslate);
		attributeAffects (paramValues , outputRotate);

		attributeAffects (paramAs , outputTranslate);
		attributeAffects (paramAs , outputRotate);

		

		return MS::kSuccess;
	}
MStatus chainOnPath::compute(const MPlug& plug,MDataBlock& dataBlock)
	{
		
		
		if ((plug==outputTranslate)||(plug==outputRotate))

		{

		int numberOfoutputsV = dataBlock.inputValue (numberOfoutputs).asInt();

		//Check if there is a curve connected

		MPlug inCurvePlug( thisMObject(), inCurve );
		if (inCurvePlug.isConnected() == false)
		{	
			return MS::kNotImplemented;
		}
		
		MPlug inSurfacePlug( thisMObject(), inSurface );
		if (inSurfacePlug.isConnected() == false)
		{	
			return MS::kNotImplemented;
		}

		//Cache params values 
		
		if (initParams == 0)
		{
			MArrayDataHandle paramsH = dataBlock.inputArrayValue(paramValues);
			paramsV = paramsH.elementCount();
			inParams = MDoubleArray(paramsV,0);
			
			if (paramsV != numberOfoutputsV )
			{
				return MS::kNotImplemented;
			}

			paramsH.jumpToArrayElement(0);
			for (int i = 0 ; i< numberOfoutputsV ; i++,paramsH.next())
			{
				inParams[i] = paramsH.inputValue().asDouble();
			}

			initParams = 1 ;
		}

		
		//Cache the curve
		if (initCurve == 0 )
		{
			inCurveV = dataBlock.inputValue (inCurve).asNurbsCurve();
			curveFn.setObject(inCurveV);
			crvLen = curveFn.length();
			defaultCurveLengthV = dataBlock.inputValue(defaultCurveLength).asDouble();
			ratio = crvLen/defaultCurveLengthV;
			initCurve = 1 ;
		}

		//Cache surface

		if (initSurface == 0 )
		{
			inSurfaceV = dataBlock.inputValue (inSurface).asNurbsSurface();
			surfFn.setObject(inSurfaceV);
			surfFn.getKnotDomain(uMin,uMax,vMin,vMax);
			initSurface = 1 ;

		}



		
		//Needed handles
		
		MArrayDataHandle outputRotateH = dataBlock.outputArrayValue(outputRotate);
		MArrayDataHandle outputTranslateH = dataBlock.outputArrayValue(outputTranslate);

		//Simple values
		
		int paramAsV = dataBlock.inputValue(paramAs).asShort();
		int outTV = outputRotateH.elementCount();
		int outRV = outputTranslateH.elementCount();
		double stretchToFitV = dataBlock.inputValue(stretchToFitLength).asDouble();
		double reverseRootV = dataBlock.inputValue(reverseRoot).asDouble();


		//extra checkings
		if (defaultCurveLengthV <0.0001 )
		{
			return MS::kNotImplemented;
		}
				
		if (paramsV != numberOfoutputsV || outTV != numberOfoutputsV || outRV != numberOfoutputsV)
		{
			return MS::kNotImplemented;
		}
		
		outputTranslateH.jumpToArrayElement(0);
		outputRotateH.jumpToArrayElement(0);
		for (int i = 0 ; i< numberOfoutputsV ; i++,outputRotateH.next(),outputTranslateH.next())
		{
			
			
			//remap the values
			reversed = defaultCurveLengthV - inParams[i];

			//Normal parm stretched
			inParamStretched = (inParams[i]*ratio*stretchToFitV) + (inParams[i]*(1.0-stretchToFitV));
			
			//Reversed param stretched
			inParamReversed  =crvLen -( (reversed*ratio*stretchToFitV) + (reversed*(1.0-stretchToFitV)));
		
			//Blend the two result
			finalParam = (inParamReversed*reverseRootV) + (inParamStretched*(1-reverseRootV));

			//get the final u value from the computed lenght
			uVal= curveFn.findParamFromLength(finalParam);
			//extract a point
			curveFn.getPointAtParam(uVal,outP,MSpace::kWorld);
			
			//bild the matrix out of normal and tangent
			tan = curveFn.tangent(uVal).normal();
			normal = surfFn.normal(uVal,vMax /2.0).normal();
			cross =  (tan^normal);

			double myMatrix[4][4]={	{ tan.x, tan.y , tan.z, 0},
						{ normal.x, normal.y , normal.z, 0},
						{cross.x, cross.y , cross.z, 0},
						{ 0, 0, 0, 1}};

			rotMatrix =MMatrix(myMatrix);		
			matrixFn  =MTransformationMatrix(rotMatrix);			
			matrixFn.getRotation(outR,rotOrder,MSpace::kObject );

			//set out translation and rotation
			outputTranslateH.outputValue().setMVector(outP);
			outputRotateH.outputValue().set(outR[0] ,outR[1],outR[2]);

			
		}

		outputTranslateH.setAllClean();
		outputRotateH.setAllClean();
		}


		
		return MS::kSuccess;
	}



MStatus chainOnPath::shouldSave(const MPlug& plug, bool& result)
{
	MStatus status = MS::kSuccess;
	result =true;
	return status;
}

MStatus chainOnPath::setDependentsDirty( const MPlug& plug, MPlugArray& plugArray )
{

	string str(plug.name().asChar());

	size_t found = str.find(string(".param"));
	
	if (found != string::npos)
	{	
		initParams = 0;
	}

	found = str.find(string(".inCurve"));
	if (found != string::npos)
	{
		initCurve = 0;

	}

	found = str.find(string(".inSurface")); 
	if (found != string::npos)
	{ 
		initSurface = 0;
	}
    return MS::kSuccess;
}