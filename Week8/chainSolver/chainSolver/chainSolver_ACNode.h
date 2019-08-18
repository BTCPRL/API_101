#pragma once
/*
Copyright (C) Alberto Caprioli

File: chainSolver_AC.h

Dependency Graph Node: chainSolver_AC

Author: Alberto Caprioli
*/


#include <maya/MPxNode.h>
#include <maya/MMatrix.h>
#include <maya/MDoubleArray.h>
#include <maya/MFnNurbsCurve.h>
#include <maya/MFnNurbsSurface.h>

class chainSolver_AC : public MPxNode {
public:
	//Methods
	chainSolver_AC();
	virtual MStatus compute(const MPlug& plug, MDataBlock& data);
	static  void*	creator();
	static  MStatus	initialize();
	virtual MStatus shouldSave(const MPlug& plug, bool& result);
	virtual MStatus setDependentsDirty(const MPlug& plug, 
									   MPlugArray&  plugArray);

public:
	
	// Unique node identifier
	static MTypeId	nodeId; 

	// Settings attributes, this will change the axis
	static  MObject inCurve;
	static  MObject inSurface;
	static  MObject numberOfOutputs;
	static  MObject paramValues;
	static  MObject paramAs;
	static  MObject defaultCurveLenght;
	static  MObject stretchToFit;
	static  MObject reverseRoot;
	
	//Out attribtues
	// Constrained node translate
	static  MObject outTranslate;
	static  MObject outTranslateX;
	static  MObject outTranslateY;
	static  MObject outTranslateZ;

	// Final rotation
	static  MObject outRotate;
	static  MObject outRotateX;
	static  MObject outRotateY;
	static  MObject outRotateZ;

private:
	// Here we have all the variables used in the code, so we don't have to 
	// declare them on the methods

	bool init_params;
	bool init_curve;
	bool init_surface;

	MDoubleArray in_params;
	MFnNurbsCurve in_curve_fn;
	MFnNurbsSurface in_surface_fn;

	double curve_len;
	int params_count;
	double u_min, u_max, v_min, v_max;
	
	MTransformationMatrix::RotationOrder rot_order;
	MTransformationMatrix matrix_fn;
	MMatrix rot_matrix;

	double out_rotation[3];
	MVector tan, normal, cross;

	double ratio;
	double default_curve_len_val;
	double u_val;
	double in_param, in_param_stretched, in_param_reversed;

	MPoint out_point;

	double reversed_val;
	double final_param;

	MObject inCurve_val, inSurface_val;

};