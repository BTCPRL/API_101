/*
Copyright (C) Alberto Caprioli

File: stretchyIK_AC.h

Dependency Graph Node: stretchyIK_AC

Author: Alberto Caprioli
*/

#include "stretchyIK_AC.h"

#include <maya/MGlobal.h>
#include <maya/MPlug.h>
#include <maya/MDataBlock.h>
#include <maya/MFnNumericAttribute.h>
#include <maya/MFnMatrixAttribute.h>
#include <maya/MMatrix.h>
#include <maya/MVector.h>

// Setting the nodeId value
MTypeId     stretchyIK_AC::nodeId(0x000710AC);

// Needed attributes
MObject     stretchyIK_AC::globalScale;       
MObject     stretchyIK_AC::initialLenA;        
MObject     stretchyIK_AC::initialLenB;       
MObject     stretchyIK_AC::startM;       
MObject     stretchyIK_AC::endM;       
MObject     stretchyIK_AC::pvM;       
MObject     stretchyIK_AC::stretch;       
MObject     stretchyIK_AC::slide;       
MObject     stretchyIK_AC::pvLock;
MObject     stretchyIK_AC::jntScaleA;
MObject     stretchyIK_AC::jntScaleB;
MObject     stretchyIK_AC::finalLenA;       
MObject     stretchyIK_AC::finalLenB;       

// Variables
MStatus		status;

void* stretchyIK_AC::creator(){
	/*
	Description:
		this method exists to give Maya a way to create new objects
		of this type. 

	Return Value:
		a new object of this type
	*/
	return new stretchyIK_AC();
}

MStatus stretchyIK_AC::initialize(){
	/*
	Description:
		This method is called to create and initialize all of the attributes
     	and attribute dependencies for this node type.  This is only called 
		once when the node type is registered with Maya.

	Return Values:
		MS::kSuccess
		MS::kFailure
	*/		
	MFnNumericAttribute nAttr;
	MFnMatrixAttribute  mtAttr;

	// In attributes
	globalScale = nAttr.create( "globalScale", "gs", 
								MFnNumericData::kDouble, 1.0 );
	nAttr.setMin(0.001);
 	nAttr.setStorable(true);
 	nAttr.setKeyable(true);
 	nAttr.setWritable(true);
	status = addAttribute( globalScale );
		if (!status) { 
			status.perror("Add Attribute globalScale"); 
			return status;
	}

	initialLenA = nAttr.create( "initialLenA", "iniA",
								MFnNumericData::kDouble, 0.0 );
 	nAttr.setStorable(true);
 	nAttr.setKeyable(true);
 	nAttr.setWritable(true);
	status = addAttribute( initialLenA );
		if (!status) { 
			status.perror("Add Attribute initialLenA"); 
			return status;
	}

	initialLenB = nAttr.create( "initialLenB", "iniB", 
								MFnNumericData::kDouble, 0.0 );
 	nAttr.setStorable(true);
 	nAttr.setKeyable(true);
 	nAttr.setWritable(true);
	status = addAttribute( initialLenB );
		if (!status) { 
			status.perror("Add Attribute initialLenB"); 
			return status;
	}
	
	startM = mtAttr.create( "startM", "sm", MFnMatrixAttribute::kDouble);
 	mtAttr.setStorable(true);
 	mtAttr.setKeyable(true);
 	mtAttr.setWritable(true);
	status = addAttribute( startM );
		if (!status) { 
			status.perror("Add Attribute startM"); 
			return status;
	}

	endM = mtAttr.create( "endM", "em", MFnMatrixAttribute::kDouble);
 	mtAttr.setStorable(true);
 	mtAttr.setKeyable(true);
 	mtAttr.setWritable(true);
	status = addAttribute( endM );
		if (!status) { 
			status.perror("Add Attribute endM"); 
			return status;
	}

	pvM = mtAttr.create( "pvM", "pvm", MFnMatrixAttribute::kDouble);
 	mtAttr.setStorable(true);
 	mtAttr.setKeyable(true);
 	mtAttr.setWritable(true);
	status = addAttribute( pvM );
		if (!status) { 
			status.perror("Add Attribute pvM"); 
			return status;
	}

	stretch = nAttr.create( "stretch", "st", MFnNumericData::kDouble, 0.0 );
	nAttr.setMax(1);
	nAttr.setMin(0);
 	nAttr.setStorable(true);
 	nAttr.setKeyable(true);
 	nAttr.setWritable(true);
	status = addAttribute( stretch );
		if (!status) { 
			status.perror("Add Attribute stretch"); 
			return status;
	}

	slide = nAttr.create( "slide", "sl", MFnNumericData::kDouble, 0.0 );
	nAttr.setMax(1);
	nAttr.setMin(-1);
 	nAttr.setStorable(true);
 	nAttr.setKeyable(true);
 	nAttr.setWritable(true);
	status = addAttribute( slide );
		if (!status) { 
			status.perror("Add Attribute slide"); 
			return status;
	}

	pvLock = nAttr.create( "pvLock", "pvl", MFnNumericData::kDouble, 0.0 );
	nAttr.setMax(1);
	nAttr.setMin(0);
 	nAttr.setStorable(true);
 	nAttr.setKeyable(true);
 	nAttr.setWritable(true);
	status = addAttribute( pvLock );
		if (!status) { 
			status.perror("Add Attribute pvLock"); 
			return status;
	}

	jntScaleA = nAttr.create( "jntScaleA", "sclA", MFnNumericData::kDouble, 1);
	nAttr.setMin(0.001);
 	nAttr.setStorable(true);
 	nAttr.setKeyable(true);
 	nAttr.setWritable(true);
	status = addAttribute( jntScaleA );
		if (!status) { 
			status.perror("Add Attribute jntScaleA"); 
			return status;
	}

	jntScaleB = nAttr.create( "jntScaleB", "sclB", MFnNumericData::kDouble, 1);
	nAttr.setMin(0.001);
 	nAttr.setStorable(true);
 	nAttr.setKeyable(true);
 	nAttr.setWritable(true);
	status = addAttribute( jntScaleB );
		if (!status) { 
			status.perror("Add Attribute jntScaleB"); 
			return status;
	}

	// Out attributes
	finalLenA = nAttr.create( "finalLenA", "fla", 
							  MFnNumericData::kDouble, 0.0 );
 	nAttr.setStorable(false);
 	nAttr.setKeyable(false);
 	nAttr.setWritable(false);
	status = addAttribute( finalLenA );
		if (!status) { 
			status.perror("Add Attribute finalLenA"); 
			return status;
	}

	finalLenB = nAttr.create( "finalLenB", "flb", 
							  MFnNumericData::kDouble, 0.0 );
 	nAttr.setStorable(false);
 	nAttr.setKeyable(false);
 	nAttr.setWritable(false);
	status = addAttribute( finalLenB );
		if (!status) { 
			status.perror("Add Attribute finalLenB"); 
			return status;
	}

	//Attributes dependencies
	attributeAffects(globalScale, finalLenA);
	attributeAffects(initialLenA, finalLenA);
	attributeAffects(jntScaleA, finalLenA);
	attributeAffects(startM, finalLenA);
	attributeAffects(endM, finalLenA);
	attributeAffects(pvM, finalLenA);
	attributeAffects(stretch, finalLenA);
	attributeAffects(slide, finalLenA);
	attributeAffects(pvLock, finalLenA);

	attributeAffects(globalScale, finalLenB);
	attributeAffects(initialLenB, finalLenB);
	attributeAffects(jntScaleB, finalLenB);
	attributeAffects(startM, finalLenB);
	attributeAffects(endM, finalLenB);
	attributeAffects(pvM, finalLenB);
	attributeAffects(stretch, finalLenB);
	attributeAffects(slide, finalLenB);
	attributeAffects(pvLock, finalLenB);
	
	return MS::kSuccess;
}

MStatus stretchyIK_AC::compute( const MPlug& plug, MDataBlock& data ){
	/*
	Description:
		Computes the position of two joints of an IK chain. This position 
		takes into consideration joint scaling, chian stretching, sliding 
		and poleVector locking.

	Arguments:
		plug - the plug to compute
		data - object that provides access to the attributes for this node
	*/

	// Check if plug is an attribute we can compute
	if ((plug != finalLenA) && (plug != finalLenB)){
		return MS::kUnknownParameter;
	}
	else {
		// Get input intial data
		double globalScale_val = data.inputValue(globalScale, 
												 &status).asDouble();
		double iniLenA_val     = data.inputValue(initialLenA, 
												 &status).asDouble();
		double iniLenB_val     = data.inputValue(initialLenB, 
												 &status).asDouble();
		double jntScaleA_val   = data.inputValue(jntScaleA, 
												 &status).asDouble();
		double jntScaleB_val   = data.inputValue(jntScaleB, 
												 &status).asDouble();
		
		// Get input matrices
		MMatrix startM_val = data.inputValue(startM, &status).asMatrix();
		MMatrix endM_val   = data.inputValue(endM, &status).asMatrix();
		MMatrix pvM_val    = data.inputValue(pvM, &status).asMatrix();

		// Get input parameters
		double stretch_attr = data.inputValue(stretch, &status).asDouble();
		double slide_attr   = data.inputValue(slide, &status).asDouble();
		double pvLock_attr  = data.inputValue(pvLock, &status).asDouble();
		
		// Get current lenght using start and end Matrices
		MVector start_vector( startM_val[3][0], 
							  startM_val[3][1], 
							  startM_val[3][2]);

		MVector end_vector(   endM_val[3][0], 
							  endM_val[3][1], 
							  endM_val[3][2]);

		MVector current_lenght_vector = end_vector - start_vector;
		double current_lenght = current_lenght_vector.length();

		// Updating initial lenghts with scale values
		iniLenA_val *= jntScaleA_val;
		iniLenB_val *= jntScaleB_val;
		
		// Calculate initial lenght with global scale
		double total_initial_lenght = (iniLenA_val + iniLenB_val) 
									* globalScale_val;
		// Initialize final lenght with initial lenght values times jnt scale
		double finalLenA_val = iniLenA_val;
		double finalLenB_val = iniLenB_val;

		//Stretch
		// calculate stretch value
		if (stretch_attr > 0) {
			double stretch_factor = current_lenght / total_initial_lenght;

			if (stretch_factor > 1){
				double stretch_effect = stretch_attr * (stretch_factor - 1);
				finalLenA_val = iniLenA_val * (1 + stretch_effect);
				finalLenB_val = iniLenB_val * (1 + stretch_effect);
			}

		}
		
		//Slide
		// To make slide work with non stretched chains, 
		//	we need to pick which length to use to obtain the ratios
		double lenght_for_slide;
		if (current_lenght <= total_initial_lenght){
			lenght_for_slide = current_lenght / globalScale_val;
		} else{
			lenght_for_slide = total_initial_lenght / globalScale_val;
		}
		// Calculate slide
		if (slide_attr > 0){
			// get a multiplier of lenA relative to the chain length
			double multiplier_a = lenght_for_slide / iniLenA_val;
			// How much len A will need to increase to match chain length
			double len_diff_a = (finalLenA_val * multiplier_a) - finalLenA_val;
			// Add that increase, multiplying it by the slide attribute
			finalLenA_val = finalLenA_val + slide_attr*len_diff_a;
			finalLenB_val  = finalLenB_val * (1 - slide_attr);

		} else if (slide_attr < 0){
			// Same process as before
			double multiplier_b = lenght_for_slide / iniLenB_val;
			double len_diff_b = (finalLenB_val * multiplier_b) - finalLenB_val;
			// Difference is here, where we want to multiply the diff by -1 
			//	 because the slide attr will be negative and we are actually 
			//	 looking to increase the final lenght for B
			finalLenB_val = finalLenB_val + slide_attr*-len_diff_b;
			// Final lenght for A is also different, again because of neg attr
			finalLenA_val  = finalLenA_val * (1 + slide_attr);
		}

		//PV lock
		if (pvLock_attr > 0){

			// Get neccesary vectors
			MVector pv_vector(pvM_val[3][0], pvM_val[3][1], pvM_val[3][2]);
			MVector start_pv_vector = pv_vector  - start_vector;
			MVector pv_end_vector 	= end_vector - pv_vector;

			// Get their distances
			double start_pv_len = start_pv_vector.length() / globalScale_val;
			double pv_end_len   = pv_end_vector.length() / globalScale_val;

			//Now we need to increment A and B to match the new distances
			double a_delta = start_pv_len - finalLenA_val;
			finalLenA_val = finalLenA_val + (a_delta * pvLock_attr);

			double b_delta = pv_end_len - finalLenB_val;
			finalLenB_val = finalLenB_val + (b_delta * pvLock_attr);
		}

		data.outputValue(finalLenA).set(finalLenA_val);
		data.outputValue(finalLenB).set(finalLenB_val);
		data.outputValue(finalLenA).setClean();
		data.outputValue(finalLenB).setClean();
	}
	return MS::kSuccess;
}
