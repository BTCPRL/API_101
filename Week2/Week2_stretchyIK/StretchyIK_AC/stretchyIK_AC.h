#pragma once
/*
Copyright (C) Alberto Caprioli

File: stretchyIK_AC.h

Dependency Graph Node: stretchyIK_AC

Author: Alberto Caprioli
*/

#include <maya/MPxNode.h>

class stretchyIK_AC : public MPxNode {
	public:
		// Methods

		virtual MStatus compute(const MPlug& plug, MDataBlock& data);
		static  void*	creator();
		static  MStatus	initialize();

		// Public Members

		static MTypeId	nodeId; // Unique node identifier

		// In attributes
		static	MObject	globalScale; // Global scale of setup
		
		static	MObject	initialLenA; // Lenght of first joint
		static	MObject	initialLenB; // Lenght of second joint

		static  MObject startM;      // World Matrix of start controller
		static  MObject endM;        // World Matrix of end controller
		static  MObject pvM;		 //	Wolrd Matrix of pole vector controller
		
		static  MObject stretch;	 //	Stretch multiplier
		static  MObject slide;	 	 //	Slide amount
		static  MObject pvLock;	 	 //	PoleVector lock multiplier
		static 	MObject jntScaleA;	 // Scale attribute for first joint
		static 	MObject jntScaleB;	 // Scale attribute for first joint

		// Out attribtues
		static  MObject finalLenA;	 // Resulting lenght of first joint
		static  MObject finalLenB;	 // Resulting lenght of second joint
};
