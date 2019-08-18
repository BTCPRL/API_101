//
// Copyright (C) 
// 
// File: basicNode_ACNode.cpp
//
// Dependency Graph Node: basicNode_AC
//
// Author: Maya Plug-in Wizard 2.0
//

#include "basicNode_ACNode.h"

#include <maya/MGlobal.h>
#include <maya/MPlug.h>
#include <maya/MDataBlock.h>
#include <maya/MFnNurbsCurve.h>


// You MUST change this to a unique value!!!  The id is a 32bit value used
// to identify this type of node in the binary file format.  
//
MTypeId     basicNode_AC::id( 0x000700AC );

// Example attributes
// 
MObject     basicNode_AC::inValue;        
MObject     basicNode_AC::inCurve;        
MObject     basicNode_AC::outUParam;       

// basicNode_AC::basicNode_AC() {} //Not sure what this is?
// basicNode_AC::~basicNode_AC() {}

MStatus		n_status; //Used to test succesful operations

MStatus basicNode_AC::compute( const MPlug& plug, MDataBlock& dataBlock )
//
//	Description:
//		This method computes the value of the given output plug based
//		on the values of the input attributes.
//
//	Arguments:
//		plug - the plug to compute
//		data - object that provides access to the attributes for this node
//
{
 
	// Check which output attribute we have been asked to compute.  If this 
	// node doesn't know how to compute it, we must return 
	// MS::kUnknownParameter.
	// 
	if( plug == outUParam )
	{
		// Get a handle to the input attribute that we will need for the
		// computation.  If the value is being supplied via a connection 
		// in the dependency graph, then this call will cause all upstream  
		// connections to be evaluated so that the correct value is supplied.
		// 

		//Read in value
		double inValue_data = dataBlock.inputValue(inValue, &n_status).asDouble();
		if( n_status != MS::kSuccess ){
			MGlobal::displayError( "basicNode_AC failed reading inValue\n" );
			return MS::kFailure;
		}
		
		// Read curve
		MObject inCurve_data = dataBlock.inputValue(inCurve, &n_status).asNurbsCurve();
		if( n_status != MS::kSuccess ){
			MGlobal::displayError( "basicNode_AC failed reading inCurve\n" );
			return MS::kFailure;
		}

		// Need a MFnNurbsCurve object to compute value
		MFnNurbsCurve crvFn(inCurve_data);
		double outUParam_data = crvFn.findParamFromLength(inValue_data, &n_status);
		if( n_status != MS::kSuccess ){
			MGlobal::displayError( "problems computing out parameter\n" );
			return MS::kFailure;
		}

		//output the result and set to clean
		dataBlock.outputValue(outUParam).set(outUParam_data);
		dataBlock.outputValue(outUParam).setClean();
		
	} else {
		return MS::kUnknownParameter;
	}

	return MS::kSuccess;
}

void* basicNode_AC::creator()
//
//	Description:
//		this method exists to give Maya a way to create new objects
//      of this type. 
//
//	Return Value:
//		a new object of this type
//
{
	return new basicNode_AC();
}

MStatus basicNode_AC::initialize()
//
//	Description:
//		This method is called to create and initialize all of the attributes
//      and attribute dependencies for this node type.  This is only called 
//		once when the node type is registered with Maya.
//
//	Return Values:
//		MS::kSuccess
//		MS::kFailure
//		
{
	// variables needed
	MFnNumericAttribute nAttr;
	MFnTypedAttribute   typedAttr;
	MStatus 			n_status;
	bool				fail = true;

	// in value
	inValue = nAttr.create( "inValue", "in", MFnNumericData::kDouble);
 	nAttr.setStorable(true); // Attribute will be written to files when this type of node is stored
 	nAttr.setWritable(true);
 	nAttr.setKeyable(true); // Attribute is keyable and will show up in the channel box
	n_status = addAttribute(inValue);
	if (!n_status) { fail = false; MGlobal::displayInfo("inValue");}


	//in curve
	inCurve = typedAttr.create( "inCurve", "inC", MFnData::kNurbsCurve);
 	typedAttr.setStorable(true);
 	typedAttr.setWritable(true);
 	typedAttr.setKeyable(true);
	n_status = addAttribute(inCurve);
	if (!n_status) {fail = false; MGlobal::displayInfo("inCurve");}

	// out parameter
	outUParam = nAttr.create( "outUParam", "outU", MFnNumericData::kDouble);
	nAttr.setWritable(false); // Attribute is read-only because it is an output attribute
	nAttr.setStorable(false); // Attribute will not be written to files when this type of node is stored
	n_status = addAttribute(outUParam);
	if (!n_status) { fail = false; MGlobal::displayInfo("outU");};

	// display error if any attribute failed to initialize
	if (!fail){
		MGlobal::displayError( "basicNode_AC failed to initialize\n" );
		return MS::kFailure;
	}

	// Set up a dependency between the input and the output.  This will cause
	// the output to be marked dirty when the input changes.  The output will
	// then be recomputed the next time the value of the output is requested.
	//
	attributeAffects( inValue, outUParam );
	attributeAffects( inCurve, outUParam );
	
	return MS::kSuccess;

}

