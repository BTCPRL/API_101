/*
Copyright (C) Alberto Caprioli

File: relaxNode_AC.h

Dependency Graph Node: relaxNode_AC

Author: Alberto Caprioli
*/

#include "relaxNode_ACNode.h"

#include <maya/MGlobal.h>
#include <maya/MPlug.h>
#include <maya/MDataBlock.h>
#include <maya/MItGeometry.h>
#include <maya/MFnMesh.h>
#include <maya/MItMeshPolygon.h>
#include <maya/MItMeshVertex.h>
#include <maya/MPointArray.h>
#include <maya/MMatrix.h>
#include <maya/MVector.h>
#include <maya/MFnNumericAttribute.h>
#include <maya/MFnTypedAttribute.h>
#include <maya/MFnDoubleArrayData.h>
#include <maya/MFnFloatArrayData.h>
#include <maya/MFnWeightGeometryFilter.h>

#define SMALL (float)1e-6

// Setting the nodeId value
MTypeId relaxNode_AC::nodeId(0x000772AC);

// Attributes
MObject relaxNode_AC::relax;
MObject relaxNode_AC::relaxIterations;

void* relaxNode_AC::creator(){
	/*
	Description:
		this method exists to give Maya a way to create new objects
		of this type. 

	Return Value:
		a new object of this type
	*/
	return new relaxNode_AC();
}

MStatus relaxNode_AC::initialize(){
	/*
	Description:
		This method is called to create and initialize all of the attributes
     	and attribute dependencies for this node type.  This is only called 
		once when the node type is registered with Maya.

	Return Values:
		MS::kSuccess
		MS::kFailure
	*/
	MFnNumericAttribute numAttrFn;

	relax = numAttrFn.create("relax","rlx", MFnNumericData::kBoolean, 1);
	numAttrFn.setKeyable(true);
	numAttrFn.setStorable(true);
	addAttribute(relax);

	relaxIterations = numAttrFn.create("relaxIterations","rli", 
									   MFnNumericData::kInt, 1);
	numAttrFn.setMin(1);	
	numAttrFn.setKeyable(true);	
	numAttrFn.setStorable(true);	
	addAttribute(relaxIterations);

	attributeAffects(relax, 		  outputGeom);
	attributeAffects(relaxIterations, outputGeom);

	MGlobal::executeCommand("makePaintable -attrType multiFloat -sm deformer relaxNode_AC weights");
	
	return MS::kSuccess;
}

MStatus relaxNode_AC::deform(MDataBlock& data, 
							 MItGeometry& geo_iter,
							 const MMatrix& mat,
							 unsigned int mIndex){
	
	//Check envelope
	double envelope_val = data.inputValue(envelope).asFloat();
	if (envelope_val < SMALL){
		return MS::kSuccess;
	}

	// Get the mesh points
	MPointArray	mesh_points;
	geo_iter.allPositions(mesh_points, MSpace::kWorld);

	// getting input mesh's meshFn
	MArrayDataHandle mesh_dh = data.inputArrayValue(input);
	mesh_dh.jumpToArrayElement(0);
	MObject input_mesh_val = mesh_dh.inputValue().child(inputGeom).asMesh();
	MFnMesh inputMesh_fn(input_mesh_val);
	
	//getting mesh's normals
	MFloatVectorArray mesh_normals;
	inputMesh_fn.getNormals(mesh_normals, MSpace::kWorld);
	
	//Check if we need to compute relaxing
	bool relax_val = data.inputValue(relax).asBool();

	//Relax
	if (relax_val == true){
		//Getting relax data
		int relaxIterations_val = data.inputValue(relaxIterations).asInt();
		
		//Iterator for relaxing
		MItMeshVertex vert_iter(input_mesh_val);
		MIntArray connected_verts;
		MVector vert_pos;

		for (int r=0; r<relaxIterations_val; r++){
			//Make a copy for relaxing
			MPointArray	mesh_points_copy(mesh_points);
			vert_iter.reset();
			for (int i=0; i < geo_iter.exactCount(); i++){
				vert_iter.getConnectedVertices(connected_verts);
				vert_pos = {0,0,0};
				for (unsigned int v=0; v<connected_verts.length(); v++){
					vert_pos+= (MVector(mesh_points_copy[connected_verts[v]]));
				}
				vert_pos/= connected_verts.length();
				mesh_points[i] = vert_pos;
				vert_iter.next();
			}
		}
	}

	geo_iter.setAllPositions(mesh_points);
	
	return MS::kSuccess;
}