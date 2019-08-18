#pragma once
/*
Copyright (C) Alberto Caprioli

File: simpleCrusherNode.h

Dependency Graph Node: simpleCrusher

Author: Alberto Caprioli
*/


#include <maya/MPxDeformerNode.h>
#include <maya/MMeshIntersector.h>
// #include <maya/MPointOnMesh.h>

class simpleCrusher : public MPxDeformerNode {
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
		static MTypeId	nodeId;			// Unique node identifier
		static MObject  crusherMesh;	// Mesh to crash into
		static MObject  minDistance;	// Distance where deformations kick in
		static MObject  useNormal;		// Only affect vertices "above" mesh

		// static MMeshIntersector  intersector;
		// static MPointOnMesh 	mesh_point;
};