/*
Copyright (C) Alberto Caprioli

File: aimConstraint_AC.h

Dependency Graph Node: aimConstraint_AC

Author: Alberto Caprioli
*/

#include "aimConstraint_ACNode.h"

#include <maya/MPlug.h>
#include <maya/MDataBlock.h>
#include <maya/MFnNumericAttribute.h>
#include <maya/MFnEnumAttribute.h>
#include <maya/MFnMatrixAttribute.h>
#include <maya/MFnUnitAttribute.h>
#include <maya/MFnCompoundAttribute.h>
#include <maya/MMatrix.h>
#include <maya/MVector.h>
#include <maya/MEulerRotation.h>

// Setting the nodeId value
MTypeId     aimConstraint_AC::nodeId(0x000730AC);

// Attributes
MObject		aimConstraint_AC::aimAxis;
MObject		aimConstraint_AC::upAxis;
MObject		aimConstraint_AC::parentM;
MObject		aimConstraint_AC::aimTargetM;
MObject		aimConstraint_AC::upObjectM;
MObject 	aimConstraint_AC::inTranslate;
MObject 	aimConstraint_AC::inTranslateX;
MObject 	aimConstraint_AC::inTranslateY;
MObject 	aimConstraint_AC::inTranslateZ;
MObject 	aimConstraint_AC::outRotate;
MObject 	aimConstraint_AC::outRotateX;
MObject 	aimConstraint_AC::outRotateY;
MObject 	aimConstraint_AC::outRotateZ; 

void* aimConstraint_AC::creator(){
	/*
	Description:
		this method exists to give Maya a way to create new objects
		of this type. 

	Return Value:
		a new object of this type
	*/
	return new aimConstraint_AC();
}

MStatus aimConstraint_AC::initialize(){
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
	MFnEnumAttribute enumAttr;

	upAxis = enumAttr.create("upAxis","uax",1);
	enumAttr.addField("prevAxis",0);
	enumAttr.addField("nextAxis",1);
	enumAttr.setKeyable(false);
	enumAttr.setWritable(true);
	enumAttr.setStorable(true);
	enumAttr.setChannelBox(true);
	addAttribute(upAxis);

	MFnEnumAttribute otherEnumAttr;
	aimAxis = otherEnumAttr.create("aimAxis","aax",1);
	otherEnumAttr.addField("X",0);
	otherEnumAttr.addField("Y",1);
	otherEnumAttr.addField("Z",2);
	otherEnumAttr.setKeyable(false);
	otherEnumAttr.setWritable(true);
	otherEnumAttr.setStorable(true);
	otherEnumAttr.setChannelBox(true);
	addAttribute(aimAxis);

	// In attributes
	add_matrix_attribute (&parentM,   	 "parentM", 	 "pam", true);
	add_matrix_attribute (&aimTargetM,   "aimTarget", 	 "aim", true);
	add_matrix_attribute (&upObjectM,    "upObject", 	 "uo", 	true);
	add_numeric_attribute(&inTranslateX, "inTranslateX", "itx", true);
	add_numeric_attribute(&inTranslateY, "inTranslateY", "ity", true);
	add_numeric_attribute(&inTranslateZ, "inTranslateZ", "itz", true);
	
	MFnCompoundAttribute cAttr;
	inTranslate = cAttr.create("inTranslate","inT");
	cAttr.addChild(inTranslateX);
	cAttr.addChild(inTranslateY);
	cAttr.addChild(inTranslateZ);
	cAttr.setStorable(true);
	cAttr.setKeyable(true);
	cAttr.setWritable(true);
	addAttribute(inTranslate);

	//out attributes
	add_angle_attribute	 (&outRotateX,   "outRotateX",   "orx",  false);
	add_angle_attribute	 (&outRotateY,   "outRotateY",   "ory",  false);
	add_angle_attribute	 (&outRotateZ,   "outRotateZ",   "orz",  false);
	
	outRotate = cAttr.create("outRotate","oT");
	cAttr.addChild(outRotateX);
	cAttr.addChild(outRotateY);
	cAttr.addChild(outRotateZ);
	cAttr.setStorable(false);
	cAttr.setKeyable(false);
	cAttr.setWritable(false);
	addAttribute(outRotate);

	attributeAffects(aimAxis, outRotate);
	attributeAffects(upAxis, outRotate);
	attributeAffects(parentM, outRotate);
	attributeAffects(aimTargetM, outRotate);
	attributeAffects(upObjectM, outRotate);
	attributeAffects(inTranslate, outRotate);

	return MS::kSuccess;

}

MStatus aimConstraint_AC::compute( const MPlug& plug, MDataBlock& data ){
	/*
	Description:
		Will compute outRotate based on the position of the aimAxis and
		upObject nodes. 
		Resulting rotate can be changed via the aimAxis and upAxis attributes
		If constrained node is part of a hierarchy. Connect the parent's world
		matrix into the node to get propper results
	*/
		// Settings attribute
	if ( (plug == outRotate) || (plug == outRotateX) 
		 || (plug == outRotateY) || (plug == outRotateZ) ) {
		
		// Extract data
		int aimAxis_val 		= data.inputValue(aimAxis).asShort();
		int upAxis_val 			= data.inputValue(upAxis).asShort();
		MMatrix parentM_val     = data.inputValue(parentM).asMatrix();
		MMatrix aimTargetM_val  = data.inputValue(aimTargetM).asMatrix();
		MMatrix upObjectM_val   = data.inputValue(upObjectM).asMatrix();
		MVector inTranslate_val = data.inputValue(inTranslate).asVector();

		// We generate a matrix with only our constrained node's translation
		double tranlsateM[4][4] = {
			{1, 0, 0, 0},
			{0, 1, 0, 0},
			{0, 0, 1, 0},
			{inTranslate_val.x, inTranslate_val.y, inTranslate_val.z, 1}
		};
		MMatrix localMatrix(tranlsateM);
		
		// We then use it to obtain the world position of our constrained node
		MMatrix worldMatrix = parentM_val * localMatrix;
		MVector world_translate (worldMatrix[3][0], 
								 worldMatrix[3][1], 
								 worldMatrix[3][2]);
		
		// Get aim and up vectors
		MVector aimMPos (aimTargetM_val[3][0], 
						 aimTargetM_val[3][1], 
						 aimTargetM_val[3][2]);
		
		MVector upPos 	(upObjectM_val[3][0],
						 upObjectM_val[3][1],
						 upObjectM_val[3][2]);
		
		MVector aimV = aimMPos - world_translate;
		MVector temp_upV = upPos - world_translate;
		aimV.normalize();
		temp_upV.normalize();

		// Get 2 vectors, perpendicular to aimV and to each other
		MVector lastV = aimV ^ temp_upV;
		MVector upV = aimV ^ lastV;

		//Build a matrix using these vectors
		MVector xAxis (lastV);
		MVector yAxis (aimV);
		MVector zAxis (upV);

		// First, We change the values of the vectors based on the settings attributes
		if (aimAxis_val == 0){
			if (upAxis_val == 0){
				xAxis = aimV;
				yAxis = lastV;
				zAxis = upV;
			} else{
				xAxis = aimV;
				yAxis = upV;
				zAxis = lastV;
			}
		}
		else if (aimAxis_val == 1){
			if (upAxis_val == 0){
				xAxis = upV;
				yAxis = aimV;
				zAxis = lastV;
			} else{
				xAxis = lastV;
				yAxis = aimV;
				zAxis = upV;
			}
		}
		else if (aimAxis_val == 2){
			if (upAxis_val == 0){
				xAxis = lastV;
				yAxis = upV;
				zAxis = aimV;
			} else{
				xAxis = upV;
				yAxis = lastV;
				zAxis = aimV;
			}
		}
		double arrayMatrix[4][4] = {
			{xAxis.x, xAxis.y, xAxis.z,0},
			{yAxis.x, yAxis.y, yAxis.z,0},
			{zAxis.x, zAxis.y, zAxis.z,0},
			{world_translate.x, world_translate.y, world_translate.z,1}
		};

		MMatrix mayaMatrix (arrayMatrix);
		MTransformationMatrix rotMatrix (mayaMatrix);
		MEulerRotation final_euler_rot = rotMatrix.eulerRotation();

		data.outputValue(outRotate).set(final_euler_rot.x,
										final_euler_rot.y,
										final_euler_rot.z);
		
		data.outputValue(outRotate).setClean();
		
		return MS::kSuccess;
	}
	return MS::kSuccess;
}

MStatus aimConstraint_AC::add_numeric_attribute(MObject *attr,
			char *long_name, char *short_name, bool inAttr){
	/*
	This function will add a kDOuble attribute
	*/
	MFnNumericAttribute nAttr;
	*attr = nAttr.create(long_name, short_name, MFnNumericData::kDouble, 0);
	nAttr.setStorable(inAttr);
	nAttr.setKeyable(inAttr);
	nAttr.setWritable(inAttr);
	addAttribute(*attr);
	return MS::kSuccess;
}

MStatus aimConstraint_AC::add_matrix_attribute(MObject *attr,
			char *long_name, char *short_name, bool inAttr){
	/*
	This function will add a Matrix attribute
	*/
	MFnMatrixAttribute  mtAttr;
	*attr = mtAttr.create( long_name, short_name);
 	mtAttr.setStorable(inAttr);
 	mtAttr.setKeyable(inAttr);
 	mtAttr.setWritable(inAttr);
	addAttribute(*attr);
	return MS::kSuccess;
}

MStatus aimConstraint_AC::add_angle_attribute(MObject *attr,
			char *long_name, char *short_name, bool inAttr){
	/*
	This function will add a kDOuble attribute
	*/
	MFnUnitAttribute uAttr;
	*attr = uAttr.create(long_name, short_name, MFnUnitAttribute::kAngle, 0.0);
	uAttr.setStorable(inAttr);
	uAttr.setKeyable(inAttr);
	uAttr.setWritable(inAttr);
	addAttribute(*attr);
	return MS::kSuccess;
}