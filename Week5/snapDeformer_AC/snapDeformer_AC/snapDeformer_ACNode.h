#pragma once
/*
Copyright (C) Alberto Caprioli

File: snapDeformer_AC.h

Dependency Graph Node: snapDeformer_AC

Author: Alberto Caprioli
*/


#include <maya/MPxDeformerNode.h>

class snapDeformer_AC : public MPxDeformerNode {
	//Methods
	public:
		snapDeformer_AC();	// Needed, to store initial values of private attrs
		static  void*	creator();
		static  MStatus	initialize();

		virtual MStatus deform(MDataBlock&     data,
							   MItGeometry&    geo_iter,
							   const MMatrix&  mat,
							   unsigned int    mIndex);

		virtual MStatus	shouldSave(const MPlug& plug, bool& result);
							
	private:
		void   initData(MObject& 	  driverMesh,
						MPointArray&  deformedPoints,
						MIntArray&    idAssociation_array,
						MObject& 	  attribute);
		
		void   ensureIndexes(MObject& attribute, int indexSize);

	//Attributes
	public:	
		static MTypeId	nodeId;			// Unique node identifier
		static MObject  rebind;			//Allows user to refresh id association
		static MObject  idAssociation;	// Array of vertex Id pairs
		static MObject  driverMesh;		// Mesh to follow
		static MObject  referenceMesh;	// ??
	
	private:
		unsigned int elemCount;
		MIntArray 	 idAssociation_array;
		bool 		 initialized;
};