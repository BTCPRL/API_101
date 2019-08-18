#pragma once
/*
Copyright (C) Alberto Caprioli

File: aimConstraint_AC.h

Dependency Graph Node: aimConstraint_AC

Author: Alberto Caprioli
*/


#include <maya/MPxNode.h>

class aimConstraint_AC : public MPxNode {
public:
	//Methods

	virtual MStatus compute(const MPlug& plug, MDataBlock& data);
	static  void*	creator();
	static  MStatus	initialize();
	static  MStatus add_numeric_attribute(MObject *attr, 
										  char *long_name, char *short_name, 
										  bool inAttr);
	static  MStatus add_matrix_attribute( MObject *attr, 
										  char *long_name, char *short_name, 
										  bool inAttr);
	static  MStatus add_angle_attribute(  MObject *attr, 
										  char *long_name, char *short_name, 
										  bool inAttr);

	//Public Members
	
	// Unique node identifier
	static MTypeId	nodeId; 

	// Settings attributes, this will change the axis
	static  MObject aimAxis;
	static  MObject upAxis;
	
	// In attributes
	static  MObject parentM;    //wolrd matrix of constrained node's parent
	static	MObject	aimTargetM;	//target
	static	MObject	upObjectM;  //Up object

	// Constrained node translate
	static  MObject inTranslate;
	static  MObject inTranslateX;
	static  MObject inTranslateY;
	static  MObject inTranslateZ;

	//Out attribtues
	// Final rotation
	static  MObject outRotate;
	static  MObject outRotateX;
	static  MObject outRotateY;
	static  MObject outRotateZ;
};