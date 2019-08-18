#pragma once
/*
Copyright (C) Alberto Caprioli

File: relaxNode_AC.h

Dependency Graph Node: relaxNode_AC

Author: Alberto Caprioli
*/

#include <maya/MPxDeformerNode.h>

class relaxNode_AC : public MPxDeformerNode {
	//Methods
	public:
		static  void*	creator();
		static  MStatus	initialize();
		virtual MStatus deform(MDataBlock&     data,
							   MItGeometry&    geo_iter,
							   const MMatrix&  mat,
							   unsigned int    mIndex);

	//Attributes
	public:	
		static MTypeId	nodeId;			 // Unique node identifier
		static MObject  relax;			 // Whether or not to relax the mesh
		static MObject  relaxIterations; // Amount of times mesh gets relaxed
};