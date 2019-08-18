/*
Copyright (C) Alberto Caprioli

File: pushDeformer_AC.h

Dependency Graph Node: pushDeformer_AC

Author: Alberto Caprioli
*/

#include "pushDeformer_ACNode.h"

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
MTypeId pushDeformer_AC::nodeId(0x000771AC);

// Attributes
MObject pushDeformer_AC::stressMap;
MObject pushDeformer_AC::useStress;
MObject pushDeformer_AC::amount;

void* pushDeformer_AC::creator(){
	/*
	Description:
		this method exists to give Maya a way to create new objects
		of this type. 

	Return Value:
		a new object of this type
	*/
	return new pushDeformer_AC();
}

MStatus pushDeformer_AC::initialize(){
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

	useStress = numAttrFn.create("useStress","ustm", 
								 MFnNumericData::kBoolean, 1);
	numAttrFn.setKeyable(true);
	numAttrFn.setStorable(true);
	addAttribute(useStress);

	amount = numAttrFn.create("amount","amt", MFnNumericData::kDouble, 1.0);
	numAttrFn.setMin(0);	
	numAttrFn.setKeyable(true);	
	numAttrFn.setStorable(true);	
	addAttribute(amount);

	stressMap = typAttrFn.create("stressMap", "stm", MFnData::kDoubleArray);
	typAttrFn.setKeyable(true);
	typAttrFn.setWritable(true);
	typAttrFn.setStorable(true);
	addAttribute(stressMap);

	attributeAffects(stressMap, 	  outputGeom);
	attributeAffects(amount, 		  outputGeom);
	attributeAffects(useStress, 	  outputGeom);

	MGlobal::executeCommand("makePaintable -attrType multiFloat -sm deformer pushDeformer_AC weights");
	
	return MS::kSuccess;
}

MStatus pushDeformer_AC::deform(MDataBlock& data, 
								MItGeometry& geo_iter,
								const MMatrix& mat,
								unsigned int mIndex){
	
	//Check envelope
	double envelope_val = data.inputValue(envelope).asFloat();
	if (envelope_val < SMALL){
		return MS::kSuccess;
	}
	
	//Check if stressMap is plugged in
	MPlug stressMap_plug(thisMObject(), stressMap);
	if (stressMap_plug.isConnected() == false){
		return MS::kNotImplemented;
	}

	// Get needed data
	bool useStress_val = data.inputValue(useStress).asBool();
	double amount_val  = data.inputValue(amount).asDouble();

	//Only get stressMap data if useStress is turned on
	MDoubleArray stressMap_val;
	if (useStress_val == true){
		// get Raw data, 
		// this returns an MObject to be used with a data functions set
		MObject stressMap_data = data.inputValue(stressMap).data();

		// we use the raw data to generate a doubleArray Fn
		MFnDoubleArrayData stressMap_dataFn(stressMap_data);
		
		// That Fn can return a regular array
		stressMap_val = stressMap_dataFn.array();
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

	//Push 
	for (int i=0; i < geo_iter.exactCount(); i++){
		if (useStress_val == true){
			mesh_points[i]+= (MVector(mesh_normals[i])  * envelope_val 
							  * amount_val * stressMap_val[i] 
							  * weightValue(data, mIndex, i));
		}
		else {
			mesh_points[i]+= (MVector(mesh_normals[i]) * envelope_val 
							  * amount_val * weightValue(data, mIndex, i));
		}
	}

	geo_iter.setAllPositions(mesh_points);
	
	return MS::kSuccess;
}