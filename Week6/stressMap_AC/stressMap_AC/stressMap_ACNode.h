#pragma once
/*
Copyright (C) Alberto Caprioli

File: stressMap_AC.h

Dependency Graph Node: stressMap_AC

Author: Alberto Caprioli
*/

#include <vector>
#include <maya/MPxLocatorNode.h>
#include <maya/MPointArray.h>
#include <maya/MDoubleArray.h>

//vertex info
class stressPoint{
	public:
		MIntArray neighbours; // adjacent vertices
		MDoubleArray neighboursStress; //initial lenght
		int neighbours_count; //
};

class stressMap_AC : public MPxLocatorNode {
	//Methods
	public:
		stressMap_AC();	// Needed, to store initial values of private attrs
		static  void*	creator();
		static  MStatus	initialize();

		virtual 	MStatus compute(const MPlug& plug, MDataBlock& dataBlock);
		virtual void 	draw(M3dView&,
							 const MDagPath&,
							 M3dView::DisplayStyle,
							 M3dView::DisplayStatus);

		virtual bool	isBounded() const;
							
	private:
		void   buildConnectionTree(std::vector<stressPoint>&pointTree,
								   MDoubleArray &stressMapValues,
								   MObject&     referenceMesh);
		
		void   stressLine(MPoint& p, 
						  double& stress,
						  const double* squashColor,
						  const double* stretchColor,
						  const double& mult);

	//Attributes
	public:
		//in 
		static MTypeId	nodeId;			// Unique node identifier
		static MObject  drawIt;			// bool vis toggle
		static MObject  inputMesh;		// Mesh where to draw stress values
		static MObject  referenceMesh;	// Mesh to check against
		static MObject multiplier;
		static MObject clampMax;
		static MObject normalize;
		static MObject squashColor;
		static MObject stretchColor;
		static MObject intensity;

		//out
		// static MObject  fakeOut;		// To force evaluation
		static MObject  output;			// 
	private:
		// class members
		std::vector<stressPoint> pointStoredTree; // ?
		MDoubleArray stressMapValues;
		int firstRun;
		MPointArray inMesh_points;
		MPointArray refMesh_points;
};