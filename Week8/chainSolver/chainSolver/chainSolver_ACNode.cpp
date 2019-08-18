/*
Copyright (C) Alberto Caprioli

File: chainSolver_AC.h

Dependency Graph Node: chainSolver_AC

Author: Alberto Caprioli
*/

#include "chainSolver_ACNode.h"

#include <maya/MPlug.h>
#include <maya/MDataBlock.h>
#include <maya/MFnNumericAttribute.h>
#include <maya/MFnEnumAttribute.h>
#include <maya/MFnTypedAttribute.h>
#include <maya/MFnCompoundAttribute.h>
#include <maya/MFnUnitAttribute.h>

#include <string>

// Setting the nodeId value
MTypeId     chainSolver_AC::nodeId(0x000780AC);

// Attributes
MObject		chainSolver_AC::inCurve;
MObject		chainSolver_AC::inSurface;
MObject		chainSolver_AC::numberOfOutputs;
MObject		chainSolver_AC::paramValues;
MObject		chainSolver_AC::paramAs;
MObject 	chainSolver_AC::defaultCurveLenght;
MObject 	chainSolver_AC::stretchToFit;
MObject 	chainSolver_AC::reverseRoot;
MObject 	chainSolver_AC::outTranslate;
MObject 	chainSolver_AC::outTranslateX;
MObject 	chainSolver_AC::outTranslateY;
MObject 	chainSolver_AC::outTranslateZ;
MObject 	chainSolver_AC::outRotate;
MObject 	chainSolver_AC::outRotateX;
MObject 	chainSolver_AC::outRotateY;
MObject 	chainSolver_AC::outRotateZ; 

chainSolver_AC::chainSolver_AC(){
		init_params = 0;
		init_curve  = 0;
		init_surface  = 0;
		params_count  = 0;
		curve_len  = 0;
		rot_order = MTransformationMatrix::kXYZ;
		u_val = 0.0;
		in_param  = 0.0;
		in_param_stretched  = 0.0;
		in_param_reversed  = 0.0;
		MPoint out_point;
		reversed_val = 0.0;
		final_param = 0.0;
}
void* chainSolver_AC::creator(){
	/*
	Description:
		this method exists to give Maya a way to create new objects
		of this type. 

	Return Value:
		a new object of this type
	*/
	return new chainSolver_AC();
}

MStatus chainSolver_AC::initialize(){
	/*
	Description:
		This method is called to create and initialize all of the attributes
     	and attribute dependencies for this node type.  This is only called 
		once when the node type is registered with Maya.

	Return Values:
		MS::kSuccess
		MS::kFailure
	*/
		// Settings attribute
	MFnNumericAttribute numAttr;
	MFnEnumAttribute enumAttr;
	MFnTypedAttribute typedAttr;
	MFnCompoundAttribute compAttr;
	MFnUnitAttribute unitAttr;

	inCurve = enumAttr.create("inCurve","inc", MFnData::kNurbsCurve);
	addAttribute(inCurve);
	
	inSurface = enumAttr.create("inSurface","ins", MFnData::kNurbsSurface);
	addAttribute(inCurve);

	numberOfOutputs = numAttr.create("numberOfOutputs","noo", MFnNumericData::kInt,1);
	numAttr.setMin(0);
	numAttr.setStorable(true);
	numAttr.setKeyable(true);
	addAttribute(numberOfOutputs);

	numberOfOutputs = numAttr.create("numberOfOutputs","noo", MFnNumericData::kDouble,0.0);
	numAttr.setMin(0);
	numAttr.setStorable(true);
	numAttr.setKeyable(true);
	addAttribute(numberOfOutputs);

	paramValues = numAttr.create("paramValues","pval", MFnNumericData::kDouble,0.0);
	numAttr.setMin(0);
	numAttr.setStorable(true);
	numAttr.setKeyable(true);
	addAttribute(paramValues);

	paramAs = enumAttr.create("paramAs","pas",0);
	enumAttr.addField("uVal",0);
	enumAttr.addField("len",1);
	enumAttr.setKeyable(true);
	enumAttr.setStorable(true);
	addAttribute(paramAs);

	defaultCurveLenght = numAttr.create("defaultCurveLenght","dcl", MFnNumericData::kDouble,0.0);
	numAttr.setMin(0.001);
	numAttr.setStorable(true);
	numAttr.setKeyable(true);
	addAttribute(defaultCurveLenght);

	stretchToFit = numAttr.create("stretchToFit","stf", MFnNumericData::kDouble,0.0);
	numAttr.setMin(0);
	numAttr.setMin(1);
	numAttr.setStorable(true);
	numAttr.setKeyable(true);
	addAttribute(stretchToFit);

	reverseRoot = numAttr.create("reverseRoot","rrt", MFnNumericData::kDouble,0.0);
	numAttr.setMin(0);
	numAttr.setMin(1);
	numAttr.setStorable(true);
	numAttr.setKeyable(true);
	addAttribute(reverseRoot);

	// Out attributes
	outTranslateX = numAttr.create("outTranslateX","otx", MFnNumericData::kDouble,0.0);
	numAttr.setStorable(false);
	numAttr.setKeyable(false);
	numAttr.setWritable(false);
	addAttribute(outTranslateX);

	outTranslateY = numAttr.create("outTranslateY","oty", MFnNumericData::kDouble,0.0);
	numAttr.setStorable(false);
	numAttr.setKeyable(false);
	numAttr.setWritable(false);
	addAttribute(outTranslateY);

	outTranslateZ = numAttr.create("outTranslateZ","otz", MFnNumericData::kDouble,0.0);
	numAttr.setStorable(false);
	numAttr.setKeyable(false);
	numAttr.setWritable(false);
	addAttribute(outTranslateZ);

	outTranslate = compAttr.create("outTranslate","ot");
	compAttr.addChild(outTranslateX);
	compAttr.addChild(outTranslateY);
	compAttr.addChild(outTranslateZ);
	compAttr.setStorable(true);
	compAttr.setKeyable(true);
	compAttr.setWritable(true);
	compAttr.setArray(true);
	addAttribute(outTranslate);

	outRotateX = unitAttr.create("outRotateX","otx", MFnUnitAttribute::kAngle,0.0);
	unitAttr.setStorable(false);
	unitAttr.setKeyable(false);
	unitAttr.setWritable(false);
	addAttribute(outRotateX);

	outRotateY = unitAttr.create("outRotateY","oty", MFnUnitAttribute::kAngle,0.0);
	unitAttr.setStorable(false);
	unitAttr.setKeyable(false);
	unitAttr.setWritable(false);
	addAttribute(outRotateY);

	outRotateZ = unitAttr.create("outRotateZ","otz", MFnUnitAttribute::kAngle,0.0);
	unitAttr.setStorable(false);
	unitAttr.setKeyable(false);
	unitAttr.setWritable(false);
	addAttribute(outRotateZ);

	outRotate = compAttr.create("outRotate","ot");
	compAttr.addChild(outRotateX);
	compAttr.addChild(outRotateY);
	compAttr.addChild(outRotateZ);
	compAttr.setStorable(true);
	compAttr.setKeyable(true);
	compAttr.setWritable(true);
	compAttr.setArray(true);
	addAttribute(outRotate);

	attributeAffects(inCurve, outRotate);
	attributeAffects(inSurface, outRotate);
	attributeAffects(numberOfOutputs, outRotate);
	attributeAffects(paramValues, outRotate);
	attributeAffects(paramAs, outRotate);
	attributeAffects(defaultCurveLenght, outRotate);
	attributeAffects(stretchToFit, outRotate);
	attributeAffects(reverseRoot, outRotate);

	attributeAffects(inCurve, outTranslate);
	attributeAffects(inSurface, outTranslate);
	attributeAffects(numberOfOutputs, outTranslate);
	attributeAffects(paramValues, outTranslate);
	attributeAffects(paramAs, outTranslate);
	attributeAffects(defaultCurveLenght, outTranslate);
	attributeAffects(stretchToFit, outTranslate);
	attributeAffects(reverseRoot, outTranslate);

	return MS::kSuccess;

}

MStatus chainSolver_AC::compute( const MPlug& plug, MDataBlock& data ){
	/*
	Description:
		Will compute outRotate based on the position of the aimAxis and
		upObject nodes. 
		Resulting rotate can be changed via the aimAxis and upAxis attributes
		If constrained node is part of a hierarchy. Connect the parent's world
		matrix into the node to get propper results
	*/
	
	// Check if we need to actually compute
	if ((plug==outTranslate) | (plug==outTranslate)){

		int numberOfOutputs_val = data.inputValue(numberOfOutputs).asInt();

		//Check if curve and surface are plugged in
		MPlug inCurve_plug(thisMObject(), inCurve);
		MPlug inSurface_plug(thisMObject(), inSurface);
		if ((inCurve_plug.isConnected == false) | (inSurface_plug.isConnected == false)){
			return MS::kNotImplemented;
		}

		//caching data
		if (init_params == 0){
			MArrayDataHandle params_dh = data.inputArrayValue(paramValues);
			params_count = params_dh.elementCount();
			in_params = MDoubleArray(params_count, 0);

			if (params_count != numberOfOutputs_val){
				return MS::kNotImplemented;
			}

			params_dh.jumpToArrayElement(0);
			for (int i = 0; i <  numberOfOutputs_val; i++, params_dh.next()){
				in_params[i] = params_dh.inputValue().asDouble();
			}

			init_params = 1;
		}
		if (init_curve == 0){
			inCurve_val = data.inputValue(inCurve).asNurbsCurve();
			in_curve_fn.setObject(inCurve_val);
			curve_len = in_curve_fn.length();
			
			default_curve_len_val = data.inputValue(defaultCurveLenght).asDouble();
			ratio = curve_len / default_curve_len_val;
			
			init_curve = 1;
		}
		if (init_surface == 0){
			inSurface_val = data.inputValue(inSurface).asNurbsSurface();
			in_surface_fn.setObject(inSurface_val);
			in_surface_fn.getKnotDomain(u_min, u_max, v_min, v_max);
			
			init_surface = 1;
		}

		//Get values
		MArrayDataHandle outTranslate_dh = data.outputArrayValue(outTranslate);
		MArrayDataHandle outRotate_dh = data.outputArrayValue(outRotate);
		int outTranslate_count = outTranslate_dh.elementCount();
		int outRotate_count = outRotate_dh.elementCount();
		
		int paramAs_val = data.inputValue(paramAs).asShort();
		double stretchToFit_val = data.inputValue(stretchToFit).asDouble();
		double reverseRoot_val = data.inputValue(reverseRoot).asDouble();

		// Checks
		if (default_curve_len_val < 0.001){
			return MS::kNotImplemented;
		}
		if ( (params_count != numberOfOutputs_val) 
			 | (outTranslate_count != numberOfOutputs_val)
			 | (outRotate_count != numberOfOutputs_val) ){
			return MS::kNotImplemented;
		}

		//resetting handles to first element
		outTranslate_dh.jumpToArrayElement(0);
		outRotate_dh.jumpToArrayElement(0);

		//Computing output values
		for (int i = 0; i < numberOfOutputs_val; i++, outTranslate_dh.next(), outRotate_dh.next()){

			//remap the values
			reversed_val = default_curve_len_val - in_params[i];

			//Get stretched parameter
			in_param_stretched = ( in_params[i]*ratio*stretchToFit_val) 
								   + (in_params[i]*(1.0-stretchToFit_val) );

			//Get reverse stretched parameter
			in_param_reversed = curve_len - ( (reversed_val*ratio*stretchToFit_val)
											  + (reversed_val*(1.0-stretchToFit_val)) 
											);
			// Blend to get the final value
			final_param = (in_param_reversed * reverseRoot_val) 
						  + (in_param_stretched * (1 - reverseRoot_val));
			
			//get the final u value from the computed lenght
			u_val = in_curve_fn.findParamFromLength(final_param);
			
			// Get point at that parameter
			in_curve_fn.getPointAtParam(u_val, out_point, MSpace::kWorld);

			//Get orthogonal vectors to build matrix
			tan = in_curve_fn.tangent(u_val).normal();
			normal = in_surface_fn.normal(u_val, v_max/2.0).normal();
			cross = (tan^normal);

			//Build the rotation matrix
			double temp_matrix[4][4] = {
				{tan.x, tan.y, tan.z,0},
				{normal.x, normal.y, normal.z,0},
				{cross.x, cross.y, cross.z,0},
				{ 0, 0, 0, 1}
			};
			rot_matrix = MMatrix(temp_matrix);
			matrix_fn = MTransformationMatrix(rot_matrix);
			matrix_fn.getRotation(out_rotation, rot_order, MSpace::kObject);

			//set output attributes
			outTranslate_dh.outputValue().setMVector(out_point);
			outRotate_dh.outputValue().set(out_rotation[0], out_rotation[1], out_rotation[2]);
			
		}

		outTranslate_dh.setAllClean();
		outRotate_dh.setAllClean();

	}
	return MS::kSuccess;
}

MStatus chainSolver_AC::shouldSave(const MPlug& plug, bool& result){
	/* We need to tell Maya to save the array attribute, otherwise it will only
	save the indexes with non-default values in them.
	*/
	result = true;
	return MS::kSuccess;
}

MStatus chainSolver_AC::setDependentsDirty(const MPlug& plug, MPlugArray& plugArray){
	std::string str(plug.name().asChar());

	size_t found = str.find(std::string(".param"));

	if (found != std::string::npos){
		init_params = 0;
	}

	found = str.find(std::string(".inCurve"));
	if (found != std::string::npos){
		init_curve = 0;
	}

	found = str.find(std::string(".inSurface"));
	if (found != std::string::npos){
		init_surface = 0;
	}

	return MS::kSuccess;
}