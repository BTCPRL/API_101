/** \brief let s you convert an arch length to a U parameter
/**
* @author Marco Giordano
* @date  08/01/2014
* @version latest version : V1
* @version changeload versions : \n
*			V1 : \n
*				- initial release \n				
*
*
* node name : basicNode.
* 
* details : This node lets you convert a curve arc length into a u parameter.
*			
* example create node : (MEL) createNode basicNode.
*/
#ifndef basicNode_H
#define basicNode_H

#include <maya/MTypeId.h>
#include <maya/MPxNode.h>


class basicNode : public MPxNode
{
public:
	
	virtual MStatus		compute( const MPlug& plug, MDataBlock& data );
	static  void*		creator();
	static  MStatus		initialize();

public:
	/**
	* The node id
	*/
	static	MTypeId		typeId;
	/**
	*  This is the input value 
	*/
	static MObject inputVal;
	/**
	* This is the input curve
	*/
	static MObject inputCurve;
	/**
	* This is the output attribute holding the computed data
	*/
	static MObject outputValue;	
};

#endif

