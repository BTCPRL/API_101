/*
Copyright (C) Alberto Caprioli

File: snapDeformer_AC.h

Dependency Graph Node: snapDeformer_AC

Author: Alberto Caprioli
*/

#include "snapDeformer_ACNode.h"

#include <maya/MGlobal.h>
#include <maya/MPlug.h>
#include <maya/MDataBlock.h>
#include <maya/MItGeometry.h>
#include <maya/MFnMesh.h>
#include <maya/MItMeshPolygon.h>
#include <maya/MPointArray.h>
#include <maya/MMatrix.h>
#include <maya/MVector.h>
#include <maya/MFnNumericAttribute.h>
#include <maya/MFnTypedAttribute.h>


#define SMALL (float)1e-6
#define BIG_DIST 99999

// Setting the nodeId value
MTypeId     snapDeformer_AC::nodeId(0x000750AC);

// Attributes
MObject snapDeformer_AC::referenceMesh;
MObject snapDeformer_AC::rebind;
MObject snapDeformer_AC::driverMesh;
MObject snapDeformer_AC::idAssociation;

snapDeformer_AC::snapDeformer_AC(){
	initialized = 0;
	elemCount = 0;
	idAssociation_array = MIntArray();
}

void* snapDeformer_AC::creator(){
	/*
	Description:
		this method exists to give Maya a way to create new objects
		of this type. 

	Return Value:
		a new object of this type
	*/
	return new snapDeformer_AC();
}

MStatus snapDeformer_AC::initialize(){
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

	rebind = numAttrFn.create("rebind","rbn", MFnNumericData::kBoolean, 0);
	numAttrFn.setKeyable(true);
	numAttrFn.setStorable(true);
	addAttribute(rebind);

	idAssociation = numAttrFn.create("idAssociation","ida", 
									 MFnNumericData::kInt, 0);
	numAttrFn.setKeyable(true);	
	numAttrFn.setStorable(true);	
	numAttrFn.setArray(true);	
	addAttribute(idAssociation);

	driverMesh = typAttrFn.create("driverMesh", "dm", MFnData::kMesh);
	addAttribute(driverMesh);

	attributeAffects(driverMesh, outputGeom);
	attributeAffects(rebind, outputGeom);

	MGlobal::executeCommand("makePaintable -attrType multiFloat -sm deformer snapDeformer_AC weights");
	return MS::kSuccess;
}

MStatus snapDeformer_AC::deform(MDataBlock& data, 
								MItGeometry& geo_iter,
								const MMatrix& mat,
								unsigned int mIndex){
	
	//Check if the mesh is connected
	MPlug driverMesh_plug(thisMObject(), driverMesh);
	if (driverMesh_plug.isConnected() == false){
		return MS::kNotImplemented;
	}

	// Get needed data
	MObject driverMesh_val = data.inputValue(driverMesh).asMesh();
	MArrayDataHandle idAssociation_hdl = data.inputArrayValue(idAssociation);
	idAssociation_hdl.jumpToArrayElement(0);  //Not always at index 0
	double envelope_val = data.inputValue(envelope).asFloat();
	bool rebind_val = data.inputValue(rebind).asBool();

	// If envelope is 0, don't compute anything
	if (envelope_val < SMALL){
		return MS::kSuccess;
	}

	// Get the driver point
	MPointArray	driverPoint;
	MFnMesh driverMesh_Fn(driverMesh_val);
	driverMesh_Fn.getPoints(driverPoint, MSpace::kWorld);

	// Get current mesh vertex position
	MPointArray mesh_vertex_pos;
	geo_iter.allPositions(mesh_vertex_pos, MSpace::kWorld);

	// Check if we need a rebind
	if (rebind_val == 1){
		initData(driverMesh_val, mesh_vertex_pos, idAssociation_array, idAssociation);
	}

	//If somehow elemCount is still 0, recompute it. how could this happen?
	int geo_iter_count = geo_iter.exactCount();
	if (elemCount == 0){
		elemCount = geo_iter_count;
	}

	// check if the idAssociation_array is empty or invalid, if so, fill it
	//Why and how would this happen?
	int array_lenght = idAssociation_array.length();
	if (elemCount != array_lenght || initialized == 0 || array_lenght == 0){
		// update from node attribute
		ensureIndexes(idAssociation, geo_iter.exactCount());

		// Loop the attribute and read the value
		MArrayDataHandle ids_hdl = data.inputArrayValue(idAssociation);
		ids_hdl.jumpToArrayElement(0);

		idAssociation_array.setLength(geo_iter_count);
		for (int i = 0; i < geo_iter_count; i++, ids_hdl.next()){
			idAssociation_array[i] = ids_hdl.inputValue().asInt();
		}

		elemCount = geo_iter_count;
		initialized = 1;
	}

	// More checks... when would this happen?
	if (elemCount != geo_iter.exactCount()){
		MGlobal::displayError("Mismatch between saved bind index and current mesh vertex, please rebind");
		return MS::kSuccess;
	}
	
	//loop all the elements and set the size.... what size??!?!?
	MVector delta, current, target;
	for (unsigned int i=0; i<elemCount; i++){
		// compute the delta from input position and final position
		delta = driverPoint[idAssociation_array[i]] - mesh_vertex_pos[i];

		//scale delta by envelope
		mesh_vertex_pos[i] = mesh_vertex_pos[i] + (delta*envelope_val);
	}
	
	//here is where we actually deform the mesh?
	// why set positions?? are these global positions?
	geo_iter.setAllPositions(mesh_vertex_pos); 
	return MS::kSuccess;
}

void snapDeformer_AC::initData(MObject& driverMesh, 
							   MPointArray& currentMeshPoints,
							   MIntArray& idAssociation_array, 
							   MObject& idAssociation_attr){
	/*
	Will compute the relationship between driver and driven points. It updates
	the bind array class attribute and the idAssociation node attribute
	*/
	
	// get size of mesh and set array size
	int count = currentMeshPoints.length();
	idAssociation_array.setLength(count);

	// declare needed function sets and get all the points
	MFnMesh mesh_Fn (driverMesh);
	MItMeshPolygon poly_iter(driverMesh);  //Loops through faces
	MPointArray driverPoints;
	mesh_Fn.getPoints(driverPoints, MSpace::kWorld);

	//declare all the needed variables of the loop
	MPoint closest_p;
	int closes_face_id, old_id, min_id;
	unsigned int x; // loop variable
	MIntArray vertices;
	double minDist, dist_to_vert;
	MVector base_vec, end, vec;

	for (int i = 0; i < count; i++){

		//Getting the closest face and point
		mesh_Fn.getClosestPoint(currentMeshPoints[i],
								closest_p, // now hold the closests point
								MSpace::kWorld,
								&closes_face_id);
		
		poly_iter.setIndex(closes_face_id, old_id); //Updating the iterator
		
		// Getting the vertices of the face
		vertices.setLength(0); 
		poly_iter.getVertices(vertices); // vertices is now an array of IDs

		//get lenght 
		base_vec = MVector(closest_p);
		minDist = BIG_DIST;

		for (x=0; x < vertices.length(); x++){
			end  = MVector(driverPoints[vertices[x]]); // What?
			
			vec = end - base_vec;

			dist_to_vert = vec.length();

			// If needed, updated the min distance and the id of the vert
			if (dist_to_vert <  minDist){
				minDist = dist_to_vert;
				min_id = vertices[x];
			}
		}

		// store result in both array and in the attribute
		idAssociation_array[i] = int(min_id); //Why casting to int?

		//ensure we got the attribute indexes
		MPlug attrPlug(thisMObject(), idAssociation_attr);
		MDataHandle mHandle;

		attrPlug.selectAncestorLogicalIndex(i, idAssociation_attr);
		attrPlug.getValue(mHandle); //get what value?.. also creates the index?
		attrPlug.setValue(min_id); // I guess this is the setAttr part

	}

	// set controller variable
	initialized = 1;
	elemCount = count;
}

void snapDeformer_AC::ensureIndexes(MObject& idAssociation_attr, 
								    int indexSize){
	/* Loops through all the attribute's possible indexes and makes sure they
	are there. 
	*/
	MPlug attrPlug(thisMObject(), idAssociation_attr);
	MDataHandle mHandle;

	for (int i = 0; i < indexSize; i++){
		attrPlug.selectAncestorLogicalIndex(i, idAssociation_attr);
		attrPlug.getValue(mHandle);
	}
}

MStatus snapDeformer_AC::shouldSave(const MPlug& plug, bool& result){
	/* This allows you to tell maya to save (as in, write to file) a given
	attribute or not.
	In our case, we want to save everything so we don't check which attribute
	*/
	result = true;
	return MS::kSuccess;
}