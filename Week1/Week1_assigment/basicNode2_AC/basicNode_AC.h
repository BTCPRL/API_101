#ifndef _basicNode_ACNode
#define _basicNode_ACNode

#include <maya/MPxNode.h>

class basicNode_AC : public MPxNode {
	public:
		virtual MStatus compute(const MPlug& plug, MDataBlock& dataBlock);
		static  void*	creator();
		static  MStatus	initialize();

		static MTypeId	nodeId;

		static	MObject	inValue;
		static	MObject	inCurve;
		static	MObject	outUParam;
};

#endif