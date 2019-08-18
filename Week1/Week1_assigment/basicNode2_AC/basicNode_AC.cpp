#include "basicNode_AC.h"

#include <maya/MGlobal.h>
#include <maya/MFnNumericAttribute.h>
#include <maya/MFnTypedAttribute.h>
#include <maya/MFnNurbsCurve.h>

// Unique nodeId value
MTypeId basicNode_AC::nodeId(0x000700AC);

//Node attributes
MObject	basicNode_AC::inValue;
MObject	basicNode_AC::inCurve;
MObject	basicNode_AC::outUParam;

//status to check succesful operation
MStatus status;


//Method to allow Maya to create new objects of this type
void* basicNode_AC::creator() {
	return new basicNode_AC();
}

//Method to initialize the node. It adds all the attributes
MStatus basicNode_AC::initialize() {
	
	// Need one numeric attribute and one typed attribute function set
	MFnNumericAttribute nAttrFn;
	MFnTypedAttribute	tAttrFn;

	//in Curve
	inCurve = tAttrFn.create("inCurve", "inC", MFnData::kNurbsCurve);
	tAttrFn.setStorable(true);
	tAttrFn.setWritable(true);
	tAttrFn.setKeyable(true);
	status = addAttribute(inCurve);
	if (status != MS::kSuccess) {
		MGlobal::displayError("basicNode_AC failed to add inCurve attr \n");
		return MS::kFailure;
	}

	//in Value
	inValue = nAttrFn.create("inValue", "inVal", MFnNumericData::kDouble);
	nAttrFn.setStorable(true);
	nAttrFn.setWritable(true);
	nAttrFn.setKeyable(true);
	status = addAttribute(inValue);
	if (status != MS::kSuccess) {
		MGlobal::displayError("basicNode_AC failed to add inCurve attr \n");
		return MS::kFailure;
	}

	// out parameter
	outUParam = nAttrFn.create("outUParam", "outU", MFnNumericData::kDouble);
	nAttrFn.setStorable(false);
	nAttrFn.setWritable(false);
	status = addAttribute(outUParam);
	if (status != MS::kSuccess) {
		MGlobal::displayError("basicNode_AC failed to add inCurve attr \n");
		return MS::kFailure;
	}

	// Attribute dependencies 
	attributeAffects(inValue, outUParam);
	attributeAffects(inCurve, outUParam);

	return MS::kSuccess;
}

//Core method of the node, this gets excecuted every time maya tries to solve the node
// it provides the output
MStatus basicNode_AC::compute(const MPlug& plug, MDataBlock& dataBlock) {
	// Computes the U parameter based on the input curve and the input value

	// only compute if plug is the one we know how to compute
	if (plug == outUParam) {
		// Read in value
		double inValue_data = dataBlock.inputValue(inValue, &status).asDouble();
		if (status != MS::kSuccess) {
			MGlobal::displayError("basicNode_AC failed to read the inValue attribute\n");
			return MS::kFailure;
		}

		// Read in Curve
		MObject inCurve_data = dataBlock.inputValue(inCurve, &status).asNurbsCurve();
		if (status != MS::kSuccess) {
			MGlobal::displayError("basicNode_AC failed to read the inCurve attribute\n");
			return MS::kFailure;
		}
		
		// Need a MFnNurbsCurve object to compute value
		MFnNurbsCurve crvFn(inCurve_data);
		double outU_value = crvFn.findParamFromLength(inValue_data, &status);
		if (status != MS::kSuccess) {
			MGlobal::displayError("basicNode_AC failed to calculate the output\n");
			return MS::kFailure;
		}

		//set the output and clean the attribute plug
		dataBlock.outputValue(outUParam).set(outU_value);
		dataBlock.outputValue(outUParam).setClean();

	}
	else
	{
		return MS::kUnknownParameter;
	}

	return MS::kSuccess;
}