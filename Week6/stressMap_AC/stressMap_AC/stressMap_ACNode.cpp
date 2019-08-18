/*
Copyright (C) Alberto Caprioli

File: stressMap_AC.h

Dependency Graph Node: stressMap_AC

Author: Alberto Caprioli
*/

#include "stressMap_ACNode.h"

#include <maya/MGlobal.h>
#include <maya/MPlug.h>
#include <maya/MDataBlock.h>
#include <maya/MFnTypedAttribute.h>
#include <maya/MFnNumericAttribute.h>
#include <maya/MFnMesh.h>
#include <maya/MFnDoubleArrayData.h>
#include <maya/MItMeshPolygon.h>
#include <maya/MItMeshVertex.h>
#include <maya/MPointArray.h>
#include <maya/MVector.h>

// Setting the nodeId value
MTypeId     stressMap_AC::nodeId(0x000760AC);

// Attributes
MObject stressMap_AC::drawIt;
MObject stressMap_AC::inputMesh;
MObject stressMap_AC::referenceMesh;
MObject stressMap_AC::multiplier;
MObject stressMap_AC::clampMax;
MObject stressMap_AC::normalize;
MObject stressMap_AC::squashColor;
MObject stressMap_AC::stretchColor;
MObject stressMap_AC::intensity;
// MObject stressMap_AC::fakeOut;
MObject stressMap_AC::output;

stressMap_AC::stressMap_AC(){
	firstRun = 0;
}

void* stressMap_AC::creator(){
	/*
	Description:
		this method exists to give Maya a way to create new objects
		of this type. 

	Return Value:
		a new object of this type
	*/
	return new stressMap_AC();
}

//Bounding box method
bool 	stressMap_AC::isBounded() const {return false;}

MStatus stressMap_AC::initialize(){
	/*
	Description:
		This method is called to create and initialize all of the attributes
     	and attribute dependencies for this node type.  This is only called 
		once when the node type is registered with Maya.

	Return Values:
		MS::kSuccess
		MS::kFailure
	*/
	MFnTypedAttribute	typAttrFn;

	inputMesh = typAttrFn.create("inputMesh", "imsh", MFnData::kMesh);
	typAttrFn.setStorable(true);
	addAttribute(inputMesh);

	referenceMesh = typAttrFn.create("referenceMesh", "rmsh", MFnData::kMesh);
	typAttrFn.setStorable(true);
	addAttribute(referenceMesh);
	
	MFnNumericAttribute numAttrFn;
	
	drawIt = numAttrFn.create("drawIt","di", MFnNumericData::kBoolean, 1);
	numAttrFn.setKeyable(true);
	numAttrFn.setStorable(true);
	addAttribute(drawIt);

	multiplier = numAttrFn.create("multiplier","mlt", 
								  MFnNumericData::kDouble, 1.0);
	numAttrFn.setMin(0);	
	numAttrFn.setKeyable(true);	
	numAttrFn.setStorable(true);	
	addAttribute(multiplier);

	clampMax = numAttrFn.create("clampMax","cmx",MFnNumericData::kDouble, 1.0);
	numAttrFn.setKeyable(true);
	numAttrFn.setStorable(true);
	numAttrFn.setMin(0);
	numAttrFn.setMax(10);
	addAttribute(clampMax);

	normalize = numAttrFn.create("normalize","nor", 
								 MFnNumericData::kBoolean, 0);
	numAttrFn.setKeyable(true);	
	numAttrFn.setStorable(true);	
	addAttribute(normalize);

	squashColor = numAttrFn.createColor("squashColor","sqc");
	numAttrFn.setDefault(1.0f, 0.0f, 0.0f);
	numAttrFn.setKeyable(true);	
	numAttrFn.setStorable(true);	
	numAttrFn.setReadable(true);	
	numAttrFn.setWritable(true);	
	addAttribute(squashColor);

	stretchColor = numAttrFn.createColor("stretchColor","stc");
	numAttrFn.setDefault(0.0f, 1.0f, 0.0f);
	numAttrFn.setKeyable(true);	
	numAttrFn.setStorable(true);	
	numAttrFn.setReadable(true);	
	numAttrFn.setWritable(true);	
	addAttribute(stretchColor);

	intensity = numAttrFn.create("intensity", "iny", 
								 MFnNumericData::kDouble, 1);
	numAttrFn.setKeyable(true);
	numAttrFn.setStorable(true);
	addAttribute(intensity);

	// fakeOut = numAttrFn.create("fakeOut", "fo", MFnNumericData::kBoolean, 1);
	// numAttrFn.setKeyable(false);
	// numAttrFn.setStorable(false);
	// addAttribute(fakeOut);

	output = typAttrFn.create("output", "out", MFnData::kDoubleArray);
	typAttrFn.setKeyable(false);
	typAttrFn.setWritable(false);
	typAttrFn.setStorable(false);
	addAttribute(output);


	// attributeAffects(drawIt, fakeOut);
	// attributeAffects(inputMesh, fakeOut);
	// attributeAffects(referenceMesh, fakeOut);
	// attributeAffects(multiplier, fakeOut);
	// attributeAffects(clampMax, fakeOut);
	// attributeAffects(normalize, fakeOut);
	// attributeAffects(squashColor, fakeOut);
	// attributeAffects(stretchColor, fakeOut);
	// attributeAffects(intensity, fakeOut);

	attributeAffects(drawIt, output);
	attributeAffects(inputMesh, output);
	attributeAffects(referenceMesh, output);
	attributeAffects(multiplier, output);
	attributeAffects(clampMax, output);
	attributeAffects(normalize, output);
	attributeAffects(squashColor, output);
	attributeAffects(stretchColor, output);
	attributeAffects(intensity, output);
	

	// Changing how the attributes are displayed in Maya's attribute editor
	//This is awful, why Maya??? why?
	MString stressMap_AC_template(MString() + 
		"global proc AEstressMap_ACTemplate( string $nodeName )\n"+
			" { editorTemplate -beginScrollLayout;\n" +
			"editorTemplate -addControl \"inputMesh\";\n"+
			"editorTemplate -addControl \"referenceMesh\";\n"+
			"editorTemplate -beginLayout \"Setting Attributes\" -collapse 0;\n"+
				"editorTemplate -addControl \"normalize\";\n"+
				"editorTemplate -addControl \"clampMax\";\n"+
				"editorTemplate -addControl \"multiplier\";\n"+
			"editorTemplate -endLayout;\n"+

			"editorTemplate -beginLayout \"Drawing Attributes\" -collapse 0;\n"+
				"editorTemplate -addControl \"drawIt\";\n"+
				"editorTemplate -addControl \"intensity\";\n"+
				"editorTemplate -addControl \"squashColor\";\n"+
				"editorTemplate -addControl \"stretchColor\";\n"+
			"editorTemplate -endLayout;\n"+

			"editorTemplate -addExtraControls;\n"+
			
			"editorTemplate -endScrollLayout;\n}");
	MGlobal::executeCommand(stressMap_AC_template);
	
	return MS::kSuccess;
}

MStatus stressMap_AC::compute(const MPlug& plug, MDataBlock& dataBlock){

	//Check if meshes are connected
	MPlug inputMesh_plug( thisMObject(), inputMesh);
	if (inputMesh_plug.isConnected() == false){
		return MS::kNotImplemented;
	}
	MPlug referenceMesh_plug( thisMObject(), referenceMesh);
	if (referenceMesh_plug.isConnected() == false){
		return MS::kNotImplemented;
	}

	//Gather data
	MObject referenceMesh_val = dataBlock.inputValue(referenceMesh).asMesh();
	MObject inputMesh_val = dataBlock.inputValue(inputMesh).asMesh();
	double  multiplier_val = dataBlock.inputValue(multiplier).asDouble();
	double  clampMax_val = dataBlock.inputValue(clampMax).asDouble();
	double  normalize_val = dataBlock.inputValue(normalize).asBool();

	//Check if tree is built
	if ((firstRun == 0) || (pointStoredTree.empty() == 1) || 
		(stressMapValues.length() == 0)){
			buildConnectionTree(pointStoredTree, stressMapValues, 
								referenceMesh_val);
	}

	// At this point we have the initial data we need to compute the stress
	//	 this data is stored inside the pointStoredTree

	//Get input mesh data
	MFnMesh inMeshFn(inputMesh_val);
	inMeshFn.getPoints(inMesh_points, MSpace::kObject); //Points stored in inMesh_points

	//Get referenceMesh data
	MFnMesh refMeshFn(referenceMesh_val);
	refMeshFn.getPoints(refMesh_points, MSpace::kObject);

	//CHECKS 
	//Make sure input and reference mesh have the same number of points
	int in_point_count = inMesh_points.length();
	if (in_point_count != refMesh_points.length()){
		MGlobal::displayError("Mismatching point number between input and reference mesh");
		return MS::kSuccess;
	}

	//Check if size of stored point is the same of the inPoints
	if (pointStoredTree.size() != in_point_count){
		MGlobal::displayError("Mistmatch between the input mesh and stored points");
	}
	//END CHECKS
	
	//Calculate stress values for all the points

	double stressValue = 0;
	MVector ref_vec, current_vec;
	int connected_vert;

	//Looping through all vertex in inputMesh
	for (int v = 0; v < in_point_count; v++){
		stressValue = 0;
		
		//For each vertex, loop through all of it's connected vertex
		for (int n = 0; n < pointStoredTree[v].neighbours_count; n++){
			connected_vert = pointStoredTree[v].neighbours[n];
			
			//Get vectors connecting current vertex and connected vertex
			ref_vec = MVector(refMesh_points[connected_vert] - refMesh_points[v]);
			current_vec = MVector(inMesh_points[connected_vert] - inMesh_points[v]);

			// We get the ratio between the size of both vectors
			// Then we accumulate all these ratios inside stressValue
			stressValue += (current_vec.length() / ref_vec.length());
		}
		
		// Once we have added all the ratios together, we get their average
		stressValue = stressValue / double(pointStoredTree[v].neighbours_count);

		// Ratio is a value from 0 to infinity, where 1 means no stress for the
		// point. We want to shift that so 0 is our "no stress" value.
		stressValue -= 1;
		
		// Now that we have our shifted value, we multiplied by the multiplier
		stressValue *= multiplier_val;

		// Clamp the value if needed
		//Not really normalizing the value, attr should be renamed, or logic updated
		if (normalize_val == 1 && stressValue > clampMax_val){
			stressValue = clampMax_val;
		}

		//Finally we store the stress value for this vertex
		stressMapValues[v] = stressValue;
	}

	//Now that we have our stress value for all points, we store them
	MFnDoubleArrayData outDataFn;
	MObject outData = outDataFn.create(stressMapValues);
	dataBlock.outputValue(output).setMObject(outData);
	dataBlock.outputValue(output).setClean();

	// dataBlock.outputValue(fakeOut).set(0);
	// dataBlock.outputValue(fakeOut).setClean();

	return MS::kSuccess;
}

void stressMap_AC::draw(M3dView & view, const MDagPath & path,
						M3dView::DisplayStyle dispStyle,
						M3dView::DisplayStatus dispStatus){
	/* 
	*/
	
	//Check vis toggle value	
	MPlug drawIt_plug (thisMObject(), drawIt);
	bool drawIt_val;
	drawIt_plug.getValue(drawIt_val);

	if (drawIt_val == false){
		return;
	}

	//This is just for forcing the node to evaluate
	//Apparently just pulling out the output in draw, will trigger compute
	// MPlug fakeOut_plug (thisMObject(), fakeOut);
	// bool fakeOut_val;
	// fakeOut_plug.getValue(fakeOut_val);

	MPlug output_plug(thisMObject(), output);
	MObject output_val;
	output_plug.getValue(output_val);

	//Getting mesh input data from attribtues
	MPlug inputMesh_plug (thisMObject(), inputMesh);
	MObject inputMesh_val;
	inputMesh_plug.getValue(inputMesh_val);

	MFnMesh inMeshFn(inputMesh_val);
	MPointArray in_points;
	// This stores point info in the same order as the points ID's in the mesh
	// for example, vtx[4] will have it's point info stored in in_points[4]
	inMeshFn.getPoints(in_points);
	MItMeshPolygon inMesh_face_iter(inputMesh_val);

	//Check if stored number of point matches the one in the input mesh
	if (stressMapValues.length() != in_points.length()){
		return;
	}

	//Getting color data from attributes
	//Squash
	MPlug squashColor_plug (thisMObject(), squashColor);
	MObject squashColor_MObj;
	squashColor_plug.getValue(squashColor_MObj);
	MFnNumericData squashColor_dataFn(squashColor_MObj);
	// We need to convert color data from float to double
	float temp_fl_color[] = {0,0,0,1};
	squashColor_dataFn.getData(temp_fl_color[0], temp_fl_color[1], temp_fl_color[2]);
	double squashColor_val[] = {temp_fl_color[0], temp_fl_color[1], temp_fl_color[2], 1};

	//Stretch
	MPlug stretchColor_plug (thisMObject(), stretchColor);
	MObject stretchColor_MObj;
	stretchColor_plug.getValue(stretchColor_MObj);
	MFnNumericData stretchColor_dataFn(stretchColor_MObj);

	stretchColor_dataFn.getData(temp_fl_color[0], temp_fl_color[1], temp_fl_color[2]);
	double stretchColor_val[] = {temp_fl_color[0], temp_fl_color[1], temp_fl_color[2], 1};

	//Intensity
	MPlug intensity_plug (thisMObject(), intensity);
	double intensity_val;
	intensity_plug.getValue(intensity_val);

	//****
	//OpenGL starts
	//****

	view.beginGL();
	
	glPushAttrib(GL_ALL_ATTRIB_BITS); //Save current state of things?
	glEnable(GL_BLEND);
	glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);

	//Changing line thickness
	glLineWidth(2);
	
	inMesh_face_iter.reset(); //Move iterator to the beggining
	
	//Create an array (vector) to check which edges have been drawn, default 0
	std::vector<int> edges_done;
	int edges_in_mesh = inMeshFn.numEdges();
	edges_done.resize(edges_in_mesh);
	for (int i = 0; i < edges_in_mesh; i++){
		edges_done[i] = 0;
	}

	//Loop faces of inMesh
	int num_of_edges, vtx1, vtx2;
	MIntArray vertex_in_face, edges_in_face; //These are arrays of ID's
	for ( ; inMesh_face_iter.isDone() != 1; inMesh_face_iter.next()){
		
		//Get edges and vertices for current face
		inMesh_face_iter.getEdges(edges_in_face);
		inMesh_face_iter.getVertices(vertex_in_face);

		//Now, lets loop each edge of current face
		num_of_edges = edges_in_face.length();
		for (int e = 0; e < num_of_edges; e++){
			//Check if edge hasn't been drawn already
			if (edges_done[edges_in_face[e]] == 0){
				// In Maya, edges are in the same order of the points given 
				// back to us. This means that any edge will have points 
				// point[n] and point [n+1], unless is the last one, which
				// will have points point[n] and point[0]
				// Apparently, this is something that it's "known"
				if (e != num_of_edges -1){
					vtx1 = vertex_in_face[e];
					vtx2 = vertex_in_face[e+1];
				}
				else{
					vtx1 = vertex_in_face[e];
					vtx2 = vertex_in_face[0];
				}

				//Draw the line
				glBegin(GL_LINES);
				stressLine(in_points[vtx1], stressMapValues[vtx1], 
						   squashColor_val, stretchColor_val, intensity_val);
				stressLine(in_points[vtx2], stressMapValues[vtx2], 
						   squashColor_val, stretchColor_val, intensity_val);
				glEnd();

				//Mark the edge as drawn
				edges_done[edges_in_face[e]] = 1;
			}
		}
	}

	glDisable(GL_BLEND);
	glPopAttrib(); //Revert state of things
	//****
	//OpenGL ends
	//****
}

void stressMap_AC::buildConnectionTree(std::vector<stressPoint>&pointTree,
									   MDoubleArray &stressMapValues,
									   MObject&     referenceMesh){
	/*
	Method that will add information for each vertex in referenceMesh to the
	pointTree vector.
	*/
	
	//Resets the array to zero, it frees the memory as well
	pointTree.clear(); //Vector, that we use as an array
	stressMapValues.clear(); //Maya's MDoubleArray

	//Create mesh functions
	MItMeshVertex vert_itr(referenceMesh);
	MFnMesh meshFn(referenceMesh);
	MPointArray ref_points;
	meshFn.getPoints(ref_points);

	//allocate memory for the arrays
	//NOTE: good to allocate all the memory all at once, unlike python's append
	int num_of_poitns = ref_points.length();
	pointTree.resize(num_of_poitns);
	stressMapValues.setLength(num_of_poitns);

	// We are going to fill the pointTree with the stressPoint information for 
	//	 all the vertices in referenceMesh
	int oldIndex; //needed by MItMeshVertex.getConnectedVertices method

	for (unsigned int i = 0; i < ref_points.length(); i++, vert_itr.next()){
		//Create a stressPoint obj
		stressPoint pnt; 
		
		//Moving the iterator to current vert
		vert_itr.setIndex(i, oldIndex); 
		
		//Getting neighbouring vertices, getConnectedVertices returns vertsIDs
		MIntArray adjacent_verts;
		vert_itr.getConnectedVertices(adjacent_verts);
		pnt.neighbours = adjacent_verts;

		//Getting how many neighbours this point has
		pnt.neighbours_count = adjacent_verts.length();
		
		// Populating the tree
		pointTree[i] = pnt;
		
		//initializing stressMapValues with default value of 0
		stressMapValues[i] = 0;
	}
}

void stressMap_AC::stressLine(MPoint& point, double& stress,
							  const double* squashColor,
							  const double* stretchColor,
							  const double& mult){
	/* Draws one point and colors it based on the stress value and given colors
	Stress > 0 means strech, < 0  means squash
	*/
	
	//Stretch
	if (stress >= 0){
		// If stress is 1 or greater, we assign max color
		if (stress >=1){
			glColor4d(stretchColor[0],stretchColor[1],stretchColor[2],1.0f);
		}
		//otherwise we calculate the intensity of the color
		else{
			double amount = stress;
			glColor4d(stretchColor[0] * amount * mult,
					  stretchColor[1] * amount * mult,
					  stretchColor[2] * amount * mult,
					  1.0f);
		}
	}
	//Squash
	else {
		//If the stress is close to -1, or less, we assign the min color
		if (stress <= -0.95){
			glColor4d(squashColor[0],squashColor[1],squashColor[2],1.0f);
		}
		//otherwise we calculate the intensity of the color
		else {
			double amount = -1 * stress; // colors can't be negative
			glColor4d(squashColor[0] * amount * mult,
					  squashColor[1] * amount * mult,
					  squashColor[2] * amount * mult,
					  1.0f);
		}
	}

	//Now we draw the vertex
	glVertex3d(0+point.x, 0+point.y, 0+point.z);
}