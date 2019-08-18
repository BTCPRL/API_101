#pragma once
/*
Copyright (C) Alberto Caprioli

File: shapeLocator_AC.h

Dependency Graph Node: shapeLocator_AC

Author: Alberto Caprioli
*/


#include <maya/MPxLocatorNode.h>

class shapeLocator_AC : public MPxLocatorNode {
public:
	//Methods

	virtual MStatus compute(const MPlug& plug, MDataBlock& data);

	static  void*	creator();
	static  MStatus	initialize();
	virtual void 	draw(M3dView&,
						 const MDagPath&,
						 M3dView::DisplayStyle,
						 M3dView::DisplayStatus);
	virtual bool	isBounded() const;
	static  MStatus add_numeric_attribute(MObject *attr, 
										  char *long_name, char *short_name, 
										  bool inAttr, float dv,
										  float max_v=1.0f, float min_v=0.0f);

	//Public Members
	
	// Unique node identifier
	static MTypeId	nodeId; 

	//Shape attr
	static 	MObject shapeStyle;
	static 	MObject lineWidth;
	// Color attrs
	static  MObject inColor;
	static  MObject inColorR;
	static  MObject inColorG;
	static  MObject inColorB;

	static MObject drawIt;
};

void draw_arrow();
void draw_cross();
void draw_axis();
void draw_cube();