#include "aimSolver.h"

#include <maya/MGlobal.h>
#include <maya/MFnNumericAttribute.h>
#include <maya/MFnUnitAttribute.h>
#include <maya/MMatrix.h>
#include <maya/MTransformationMatrix.h>
#include <maya/MVector.h>
#include <maya/MFnMatrixAttribute.h>
#include <maya/MPlug.h>
#include <maya/MFnEnumAttribute.h>
#include <maya/MEulerRotation.h>
#include <maya/MFnCompoundAttribute.h>
#include <maya/MFnTypedAttribute.h>
#include <maya/MFnTypedAttribute.h>
#include <maya/MDataHandle.h>

MTypeId aimSolver::typeId(0x80035);

//attributes
MObject aimSolver::inputTranslate;
MObject aimSolver::inputTranslateX;
MObject aimSolver::inputTranslateY;
MObject aimSolver::inputTranslateZ;
MObject aimSolver::outputRotate;
MObject aimSolver::outputRotateX;
MObject aimSolver::outputRotateY;
MObject aimSolver::outputRotateZ;
MObject aimSolver::driverMatrix;
MObject aimSolver::upVectorMatrix;

void* aimSolver::creator()
{
	return new aimSolver();
}

MStatus aimSolver::initialize()
{
	MFnNumericAttribute numFn;
	MFnTypedAttribute typedFn;
	MFnCompoundAttribute compound;
	MFnMatrixAttribute matrixFn;
	MFnUnitAttribute uAttr;
	
	driverMatrix = matrixFn.create("driverMatrix", "dvm");
	addAttribute(driverMatrix);

	upVectorMatrix = matrixFn.create("upVectorMatrix", "uvm");
	addAttribute(upVectorMatrix);

	inputTranslateX = numFn.create("InputTranslateX", "itx", MFnNumericData::kDouble, 0);
	numFn.setStorable(true);
	numFn.setKeyable(true);
	numFn.setWritable(true);
	addAttribute(inputTranslateX);

	inputTranslateY = numFn.create("InputTranslateY", "ity", MFnNumericData::kDouble, 0);
	numFn.setStorable(true);
	numFn.setKeyable(true);
	numFn.setWritable(true);
	addAttribute(inputTranslateY);

	inputTranslateZ = numFn.create("InputTranslateZ", "itz", MFnNumericData::kDouble, 0);
	numFn.setStorable(true);
	numFn.setKeyable(true);
	numFn.setWritable(true);
	addAttribute(inputTranslateZ);
	
	inputTranslate = compound.create("InputTranslate", "intr");
	compound.addChild(inputTranslateX);
	compound.addChild(inputTranslateY);
	compound.addChild(inputTranslateZ);
	compound.setStorable(true);
	compound.setKeyable(true);
	compound.setWritable(true);
	addAttribute(inputTranslate);
	
	outputRotateX = uAttr.create("OutputRotateX", "orx", MFnUnitAttribute::kAngle, 0.0);
	uAttr.setStorable(false);
	uAttr.setKeyable(false);
	uAttr.setWritable(false);
	addAttribute(outputRotateX);
	
	outputRotateY = uAttr.create("OutputRotateY", "ory", MFnUnitAttribute::kAngle, 0.0);
	uAttr.setStorable(false);
	uAttr.setKeyable(false);
	uAttr.setWritable(false);
	addAttribute(outputRotateY);

	outputRotateZ = uAttr.create("OutputRotateZ", "orz", MFnUnitAttribute::kAngle, 0.0);
	uAttr.setStorable(false);
	uAttr.setKeyable(false);
	uAttr.setWritable(false);
	addAttribute(outputRotateZ);

	outputRotate = compound.create("OutputRotate", "or");
	compound.addChild(outputRotateX);
	compound.addChild(outputRotateY);
	compound.addChild(outputRotateZ);
	compound.setArray(true);
	compound.setStorable(false);
	compound.setKeyable(false);
	compound.setWritable(false);
	addAttribute(outputRotate);
	
	attributeAffects(upVectorMatrix, outputRotate);
	attributeAffects(driverMatrix, outputRotate);
	attributeAffects(inputTranslate, outputRotate);
	
	return MS::kSuccess;
}

MStatus aimSolver::compute(const MPlug& plug, MDataBlock& dataBlock)
{

	
	if ( (plug == outputRotate) || (plug == outputRotateX)
		|| (plug == outputRotateY) || (plug == outputRotateZ) )
		{

		//Get input data
		MMatrix driverMatrixV = dataBlock.inputValue(driverMatrix).asMatrix();
		MMatrix upVectorMatrixV = dataBlock.inputValue(upVectorMatrix).asMatrix();
		MVector inputTranslateV = dataBlock.inputValue(inputTranslate).asVector();

		//Get position
		MVector driverMatrixPos(	driverMatrixV[3][0], 
									driverMatrixV[3][1], 
									driverMatrixV[3][2]);
		
		MVector upVectorMatrixPos(	upVectorMatrixV[3][0],
									upVectorMatrixV[3][1],
									upVectorMatrixV[3][2]);

		//Compute vectors
		MVector upVec = upVectorMatrixPos - inputTranslateV;
		MVector aimVec = driverMatrixPos - inputTranslateV;
		upVec.normalize();
		aimVec.normalize();

		//Compute perpendicular
		MVector cross = aimVec ^ upVec;
		upVec = cross ^ aimVec;

		//Build rotation matrix
		double matrix[4][4] = { { aimVec.x, aimVec.y, aimVec.z, 0},
								{ upVec.x, upVec.y, upVec.z, 0},
								{cross.x, cross.y, cross.z, 0},
								{inputTranslateV[0], inputTranslateV[1], inputTranslateV[2], 1} };

		//Extract euler
		MMatrix rotMatrix(matrix);
		MTransformationMatrix matrixFn(rotMatrix);
		MEulerRotation euler = matrixFn.eulerRotation();

		//set output data
		dataBlock.outputValue(outputRotate).set(euler.x, euler.y, euler.z);

		dataBlock.outputValue(outputRotate).setClean();
	}
	
	return MS::kSuccess;
}