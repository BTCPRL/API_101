#include "basicNode.h"

#include <maya/MFnNumericAttribute.h>
#include <maya/MGlobal.h>
#include <maya/MTransformationMatrix.h>
#include <maya/MFloatPoint.h>
#include <maya/MFnMatrixAttribute.h>
#include <maya/MPlug.h>
#include <maya/MFnEnumAttribute.h>
#include <maya/MFnNurbsCurve.h>
#include <maya/MFnCompoundAttribute.h>
#include <maya/MFnTypedAttribute.h>
#include <cmath>
#include <maya/MDataHandle.h>


MTypeId basicNode::typeId( 0x80004 );

//Needed attributes

MObject basicNode::inputVal;
MObject basicNode::inputCurve;
MObject basicNode::outputValue;

//Class
void* basicNode::creator()
{
	return new basicNode();
}

MStatus basicNode::initialize()
	{ 
		//Declaring all the needed attribute function sets
		MFnNumericAttribute numFn;
		MFnTypedAttribute typedFn ;

		MStatus status;

		inputVal =numFn.create("inputValue","iv",MFnNumericData::kDouble , 0 , &status);
		numFn.setKeyable(true);
		numFn.setWritable(true);
		numFn.setStorable(true);
		addAttribute(inputVal);


		inputCurve  = typedFn.create( "inputCurve", "incv", MFnData::kNurbsCurve );
        typedFn.setKeyable(true);
        typedFn.setWritable(true);
        typedFn.setStorable(true);
        addAttribute(inputCurve);

		outputValue =numFn.create("outputValue","ov",MFnNumericData::kDouble);
		numFn.setKeyable(false);
		numFn.setStorable(false);
		numFn.setWritable(false);
		addAttribute(outputValue);
			

		attributeAffects(inputVal,outputValue);
		attributeAffects(inputCurve,outputValue);



		return MS::kSuccess;
	

}


MStatus basicNode::compute(const MPlug& plug,MDataBlock& dataBlock)
	{
	
		
		//Make usre to trigger only when needed
		if (plug==outputValue)

		{	
			
			//Reads input
			double inVal = dataBlock.inputValue(inputVal).asDouble();
			MObject crvV = dataBlock.inputValue(inputCurve).asNurbsCurve();	
		
			//Compute corresponding parameter
			MFnNurbsCurve crvFn(crvV);
			double outVal = crvFn.findParamFromLength(inVal);

			//Set the output
			dataBlock.outputValue(outputValue).set(outVal);
			dataBlock.outputValue(outputValue).setClean();

		}

		return MS::kSuccess;
	}









