/*
Copyright (C) Alberto Caprioli

File: shapeLocator_AC.h

Dependency Graph Node: shapeLocator_AC

Author: Alberto Caprioli
*/

#include "shapeLocator_ACNode.h"

#include <maya/MPlug.h>
#include <maya/MDataBlock.h>
#include <maya/MFnNumericAttribute.h>
#include <maya/MFnEnumAttribute.h>
#include <maya/MFnCompoundAttribute.h>
#include <GL/glu.h>
#include <GL/gl.h>

// Setting the nodeId value
MTypeId     shapeLocator_AC::nodeId(0x000740AC);

// Attributes
MObject 	shapeLocator_AC::drawIt;
MObject 	shapeLocator_AC::shapeStyle;
MObject 	shapeLocator_AC::lineWidth;
MObject 	shapeLocator_AC::inColor;
MObject 	shapeLocator_AC::inColorR;
MObject 	shapeLocator_AC::inColorG;
MObject 	shapeLocator_AC::inColorB;

void* shapeLocator_AC::creator(){
	/*
	Description:
		this method exists to give Maya a way to create new objects
		of this type. 

	Return Value:
		a new object of this type
	*/
	return new shapeLocator_AC();
}

MStatus shapeLocator_AC::initialize(){
	/*
	Description:
		This method is called to create and initialize all of the attributes
     	and attribute dependencies for this node type.  This is only called 
		once when the node type is registered with Maya.

	Return Values:
		MS::kSuccess
		MS::kFailure
	*/
	
	// ShapeStyle attr
	MFnEnumAttribute enumAttr;
	shapeStyle = enumAttr.create("shapeStyle","sst",0);
	enumAttr.addField("arrow",0);
	enumAttr.addField("cross",1);
	enumAttr.addField("axis",2);
	enumAttr.addField("cube",3);
	enumAttr.setKeyable(false);
	enumAttr.setWritable(true);
	enumAttr.setStorable(true);
	enumAttr.setChannelBox(true);
	addAttribute(shapeStyle);
	MFnNumericAttribute numAttr;

	// Line width
	add_numeric_attribute(&lineWidth, "lineWidth", "lw", true, 1.0f, 10.0f);

	// Color attributes
	add_numeric_attribute(&inColorR, "inColorR", "icr", true, 0.2f);
	add_numeric_attribute(&inColorG, "inColorG", "icg", true, 0.4f);
	add_numeric_attribute(&inColorB, "inColorB", "icb", true, 0.1f);
	
	MFnCompoundAttribute cAttr;
	inColor = cAttr.create("inColor","icl");
	cAttr.addChild(inColorR);
	cAttr.addChild(inColorG);
	cAttr.addChild(inColorB);
	cAttr.setStorable(true);
	cAttr.setKeyable(true);
	cAttr.setWritable(true);
	addAttribute(inColor);

	//Vis toggle
	drawIt = numAttr.create("drawIt","di", MFnNumericData::kBoolean, 1);
	addAttribute(drawIt);
	
	return MS::kSuccess;
}

bool shapeLocator_AC::isBounded() const {
	/*
	Not sure what this is for
	*/
	return false;
}

MStatus shapeLocator_AC::compute( const MPlug& plug, MDataBlock& data ){
	/*
	Not sure what this is for
	*/
	return MS::kSuccess;
}

void shapeLocator_AC::draw(M3dView & view, const MDagPath & path,
						   M3dView::DisplayStyle dispStyle,
						   M3dView::DisplayStatus dispStatus){
	/* 
	Draws the shape
	*/
	
	//Get current value of attributes, we do it differently bc no dataBlock

	MPlug inColorR_plug (thisMObject(), inColorR);
	float inColorR_val;
	inColorR_plug.getValue(inColorR_val);

	MPlug inColorG_plug (thisMObject(), inColorG);
	float inColorG_val;
	inColorG_plug.getValue(inColorG_val);

	MPlug inColorB_plug (thisMObject(), inColorB);
	float inColorB_val;
	inColorB_plug.getValue(inColorB_val);

	MPlug shapeStyle_plug (thisMObject(), shapeStyle);
	short shapeStyle_val;
	shapeStyle_plug.getValue(shapeStyle_val);

	MPlug lineWidth_plug (thisMObject(), lineWidth);
	float lineWidth_val;
	lineWidth_plug.getValue(lineWidth_val);
	
	MPlug drawIt_plug (thisMObject(), drawIt);
	bool drawIt_val;
	drawIt_plug.getValue(drawIt_val);

	if (drawIt_val == false){
		return;
	}

	//OpenGL starts
	view.beginGL();
	
	glPushAttrib(GL_ALL_ATTRIB_BITS); //Save current state of things?
	glEnable(GL_BLEND);
	glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);
	
	//Changing line thickness and line color

	glLineWidth(lineWidth_val);

	if (dispStatus == M3dView::kLead){
		glColor4f(inColorR_val, inColorG_val, inColorB_val, 0.5f);
	} else{
		glColor4f(inColorR_val * 1.2f , 
				  inColorG_val * 1.2f , 
				  inColorB_val * 1.2f , 
				  0.5f);
	}
	
	// Drawing the actual shape
	switch(shapeStyle_val){
		case 0: draw_arrow();
				break;
		case 1: draw_cross();
				break;
		case 2: draw_axis();
				break;
		case 3: draw_cube();
				break;
	}

	glDisable(GL_BLEND);
	glPopAttrib(); //Revert state of things
	//OpenGL ends
}

MStatus shapeLocator_AC::add_numeric_attribute(MObject *attr,
			char *long_name, char *short_name, bool inAttr, float dv,
			float max_v, float min_v){
	/*
	This function will add a kFloat attribute
	*/
	MFnNumericAttribute nAttr;
	*attr = nAttr.create(long_name, short_name, MFnNumericData::kFloat, dv);
	nAttr.setMax(max_v);
	nAttr.setMin(min_v);
	nAttr.setStorable(inAttr);
	nAttr.setKeyable(inAttr);
	nAttr.setWritable(inAttr);
	addAttribute(*attr);
	return MS::kSuccess;
}

void draw_arrow(){
	//Arrow body
	glBegin(GL_TRIANGLES);
		glVertex3d(-2,1,0);
		glVertex3d(2,1,0);
		glVertex3d(2,-1,0);
	glEnd();
	glBegin(GL_TRIANGLES);
		glVertex3d(2,-1,0);
		glVertex3d(-2,1,0);
		glVertex3d(-2,-1,0);
	glEnd();

	//Arrow tip
	glBegin(GL_TRIANGLES);
		glVertex3d(2,2,0);
		glVertex3d(4,0,0);
		glVertex3d(2,-2,0);
	glEnd();
}

void draw_cross(){
	glBegin(GL_LINES);
		glVertex3d(-2,2,0);
		glVertex3d(2,-2,0);
	glEnd();
	glBegin(GL_LINES);
		glVertex3d(2,2,0);
		glVertex3d(-2,-2,0);
	glEnd();
	glBegin(GL_LINES);
		glVertex3d(0,0,2);
		glVertex3d(0,0,-2);
	glEnd();
}

void draw_axis(){
	glBegin(GL_LINES);
		glVertex3d(0,0,0);
		glVertex3d(1,0,0);
	glEnd();
	glBegin(GL_LINES);
		glVertex3d(0,0,0);
		glVertex3d(0,1,0);
	glEnd();
	glBegin(GL_LINES);
		glVertex3d(0,0,0);
		glVertex3d(0,0,1);
	glEnd();
}

void draw_cube(){
	//Array with all the vertex needed
	float cube_v[36][3] = {
		{-1.0f,-1.0f,-1.0f},
		{-1.0f,-1.0f, 1.0f},
		{-1.0f, 1.0f, 1.0f},
		{1.0f, 1.0f,-1.0f},
		{-1.0f,-1.0f,-1.0f},
		{-1.0f, 1.0f,-1.0f},
		{1.0f,-1.0f, 1.0f},
		{-1.0f,-1.0f,-1.0f},
		{1.0f,-1.0f,-1.0f},
		{1.0f, 1.0f,-1.0f},
		{1.0f,-1.0f,-1.0f},
		{-1.0f,-1.0f,-1.0f},
		{-1.0f,-1.0f,-1.0f},
		{-1.0f, 1.0f, 1.0f},
		{-1.0f, 1.0f,-1.0f},
		{1.0f,-1.0f, 1.0f},
		{-1.0f,-1.0f, 1.0f},
		{-1.0f,-1.0f,-1.0f},
		{-1.0f, 1.0f, 1.0f},
		{-1.0f,-1.0f, 1.0f},
		{1.0f,-1.0f, 1.0f},
		{1.0f, 1.0f, 1.0f},
		{1.0f,-1.0f,-1.0f},
		{1.0f, 1.0f,-1.0f},
		{1.0f,-1.0f,-1.0f},
		{1.0f, 1.0f, 1.0f},
		{1.0f,-1.0f, 1.0f},
		{1.0f, 1.0f, 1.0f},
		{1.0f, 1.0f,-1.0f},
		{-1.0f, 1.0f,-1.0f},
		{1.0f, 1.0f, 1.0f},
		{-1.0f, 1.0f,-1.0f},
		{-1.0f, 1.0f, 1.0f},
		{1.0f, 1.0f, 1.0f},
		{-1.0f, 1.0f, 1.0f},
		{1.0f,-1.0f, 1.0f}
	};
	// Creating the cube
	for (int x = 0; x < 34; x+=3){
		glBegin(GL_TRIANGLES);
			glVertex3d(cube_v[x][0],cube_v[x][1],cube_v[x][2]);
			glVertex3d(cube_v[x+1][0],cube_v[x+1][1],cube_v[x+1][2]);
			glVertex3d(cube_v[x+2][0],cube_v[x+2][1],cube_v[x+2][2]);
		glEnd();
	}
	
}