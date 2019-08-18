#ifndef aimSolver_H
#define aimSolver_H

#include <maya/MPxNode.h>


//Class declaration

class aimSolver: public MPxNode
{
public:
	static void* creator();
	static MStatus initialize();
	virtual MStatus compute(const MPlug& plug, MDataBlock& dataBlock);

public:
	//Node Id
	static MTypeId typeId;

	//world translate of the start reference node 
	static MObject inputTranslate;
	static MObject inputTranslateX;
	static MObject inputTranslateY;
	static MObject inputTranslateZ;

	//output rotate of the start reference node 
	static MObject outputRotate;
	static MObject outputRotateX;
	static MObject outputRotateY;
	static MObject outputRotateZ;

	static MObject driverMatrix;
	static MObject upVectorMatrix;

};


#endif