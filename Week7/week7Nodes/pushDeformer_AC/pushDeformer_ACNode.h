#pragma once
/*
Copyright (C) Alberto Caprioli

File: pushDeformer_AC.h

Dependency Graph Node: pushDeformer_AC

Author: Alberto Caprioli
*/

#include <maya/MPxDeformerNode.h>

class pushDeformer_AC : public MPxDeformerNode {
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
		static MObject  stressMap;		 // StressMap data
		static MObject  useStress;		 // Check if streesMap data is used
		static MObject  amount;			 // AMount to push along normals
};