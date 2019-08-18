#ifndef _basicNode_ACNode
#define _basicNode_ACNode
//
// Copyright (C) 
// 
// File: basicNode_ACNode.h
//
// Dependency Graph Node: basicNode_AC
//
// Author: Maya Plug-in Wizard 2.0
//

#include <maya/MPxNode.h>
#include <maya/MFnNumericAttribute.h>
#include <maya/MFnTypedAttribute.h>
#include <maya/MTypeId.h> 

 
class basicNode_AC : public MPxNode
{
public:
	// 					basicNode_AC(); //Not sure what this is?
	// virtual				~basicNode_AC(); 

	virtual MStatus		compute( const MPlug& plug, MDataBlock& dataBlock );

	static  void*		creator();
	static  MStatus		initialize();

public:

	// The typeid is a unique 32bit indentifier that describes this node.
	// It is used to save and retrieve nodes of this type from the binary
	// file format.  If it is not unique, it will cause file IO problems.
	//
	static	MTypeId		id;

	// There needs to be a MObject handle declared for each attribute that
	// the node will have.  These handles are needed for getting and setting
	// the values later.
	//
	static  MObject		inValue;		// Position along the curve
	static  MObject		inCurve;		// Curve input
	static  MObject		outUParam;		// U value based on lenght


};

#endif
