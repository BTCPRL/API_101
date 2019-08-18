/*
Copyright (C) Alberto Caprioli

File: simpleCrusher.h

Dependency Graph Node: simpleCrusher

Author: Alberto Caprioli
*/

#include "simpleCrusherNode.h"

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
#include <maya/MMeshIntersector.h>

#define SMALL (float)1e-6

// Setting the nodeId value
MTypeId simpleCrusher::nodeId(0x000700AC);

// Attributes
MObject simpleCrusher::crusherMesh;
MObject simpleCrusher::minDistance;
MObject simpleCrusher::useNormal;
// MMeshIntersector simpleCrusher::intersector;
// MPointOnMesh simpleCrusher::mesh_point;

void* simpleCrusher::creator(){
	/*
	Description:
		this method exists to give Maya a way to create new objects
		of this type. 

	Return Value:
		a new object of this type
	*/
	return new simpleCrusher();
}

MStatus simpleCrusher::initialize(){
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
	MFnTypedAttribute	typAttrFn;

	useNormal = numAttrFn.create("useNormal","un", 
								 MFnNumericData::kBoolean, 1);
	numAttrFn.setKeyable(true);
	numAttrFn.setStorable(true);
	addAttribute(useNormal);

	minDistance = numAttrFn.create("minDistance","md", MFnNumericData::kDouble, 0.1);
	numAttrFn.setMin(0);	
	numAttrFn.setKeyable(true);	
	numAttrFn.setStorable(true);	
	addAttribute(minDistance);

	crusherMesh = typAttrFn.create("crusherMesh", "cm", MFnData::kMesh);
	addAttribute(crusherMesh);

	attributeAffects(useNormal, 	  outputGeom);
	attributeAffects(minDistance, 		  outputGeom);
	attributeAffects(crusherMesh, 	  outputGeom);

	MGlobal::executeCommand("makePaintable -attrType multiFloat -sm deformer simpleCrusher weights");
	
	return MS::kSuccess;
}

MStatus simpleCrusher::deform(MDataBlock& data, 
								MItGeometry& geo_iter,
								const MMatrix& mat,
								unsigned int mIndex){
	
	//Check envelope
	double envelope_val = data.inputValue(envelope).asFloat();
	if (envelope_val < SMALL){
		return MS::kSuccess;
	}
	
	//Check if crusherMesh is plugged in
	MPlug crusherMesh_plug(thisMObject(), crusherMesh);
	if (crusherMesh_plug.isConnected() == false){
		return MS::kNotImplemented;
	}

	// Get needed data
	bool useNormal_val = data.inputValue(useNormal).asBool();
	double minDistance_Val  = data.inputValue(minDistance).asDouble();
	MObject crusherMesh_val = data.inputValue(crusherMesh).asMesh();

	// Get the mesh points
	MPointArray	mesh_points;
	geo_iter.allPositions(mesh_points, MSpace::kWorld);

	//Get crusher mesh points
	MFnMesh crusherMesh_fn(crusherMesh_val);
	MPointArray	crusher_points;
	crusherMesh_fn.getPoints(crusher_points, MSpace::kObject);
	MItMeshPolygon inMesh_face_iter(crusherMesh_val);
	inMesh_face_iter.reset(); //Move iterator to the beggining

	// getting input mesh's meshFn
	MArrayDataHandle mesh_dh = data.inputArrayValue(input);
	mesh_dh.jumpToArrayElement(0);
	MObject input_mesh_val = mesh_dh.inputValue().child(inputGeom).asMesh();
	MFnMesh inputMesh_fn(input_mesh_val);
	
	//getting mesh's normals
	MFloatVectorArray mesh_normals;
	inputMesh_fn.getNormals(mesh_normals, MSpace::kWorld);

	//Crush 
	MMeshIntersector  intersector;
	MPointOnMesh 	mesh_point;
	intersector.create(crusherMesh_val);
	for ( int i = 0; !geo_iter.isDone(); i++, geo_iter.next()){
		intersector.getClosestPoint(geo_iter.position(),
									mesh_point);
		MFloatPoint closest_point = mesh_point.getPoint();
		MVector mesh_point = MVector(closest_point);
		MVector current_point = MVector(geo_iter.position());
		MVector current_to_mesh = current_point - mesh_point;
		double lenght = current_to_mesh.length();
		if (lenght <= minDistance_Val){
			mesh_points[i] = mesh_point;
		}
	}

	geo_iter.setAllPositions(mesh_points);
	
	return MS::kSuccess;
}