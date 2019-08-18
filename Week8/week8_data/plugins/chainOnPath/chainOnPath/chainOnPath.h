/** 
*/

/**
* @author Marco Giordano
* @date  8/26/2014
* @version latest version : V1
* @version changeload versions : \n
*			V1 : \n
*				- initial release \n				
*
*
* node name : chainOnPath.
* 
*
*			
* example create node : (MEL) createNode chainOnPath.
*

*/
#ifndef _chainOnPath
#define _chainOnPath

#include <maya/MPxNode.h>
#include <maya/MFnTypedAttribute.h>
#include <maya/MFnStringData.h>
#include <maya/MFnNumericAttribute.h>
#include <maya/MSelectionList.h>
#include <maya/MDagPath.h>
#include <maya/MGlobal.h>
#include <maya/MFnGenericAttribute.h>
#include <maya/MFnDependencyNode.h>
#include <maya/MFnCompoundAttribute.h>
#include <maya/MDoubleArray.h>
#include <maya/MTypeId.h>
#include <maya/MFnNurbsSurface.h>
#include <maya/MFnNurbsCurve.h>
#include <maya/MTransformationMatrix.h>
#include <maya/MMatrix.h>
//Class

class chainOnPath : public MPxNode
{
public:

		chainOnPath();
		static void* creator();
		static MStatus initialize();
		virtual MStatus compute(const MPlug& plug,MDataBlock& dataBlock);
		virtual MStatus shouldSave(const MPlug& plug, bool& result);
		virtual MStatus     setDependentsDirty( const MPlug& plug, MPlugArray& plugArray );
		
		//static const MString typeName;


	static MTypeId typeId; 

	static MObject inCurve;
	static MObject inSurface;
	static MObject numberOfoutputs;
	static MObject paramValues;
		  /**
	  * The X  compound  component  for outputTranslate attribute
	  */
      static MObject outputTranslateX;
	  /**
	  * The Y compound  component  for outputTranslate attribute
	  */
      static MObject outputTranslateY;
	  /**
	  * The Z  compound  component  for outputTranslate attribute
	  */
      static MObject outputTranslateZ;
	  /**
	  * The  outputTranslate attribute
	  */
      static MObject outputTranslate;
	  /**
	  * The X  compound  component  for outputRotate attribute
	  */
      static MObject outputRotateX;
	  /**
	  * The Y  compound  component  for outputRotate attribute
	  */
      static MObject outputRotateY;
	  /**
	  * The Z  compound  component  for outputRotate attribute
	  */
      static MObject outputRotateZ;
	  /**
	  * The outputRotate attribute
	  */
      static MObject outputRotate;
	  /**
	  * This attribute define in which way the param along the curve has to be used
	  */
      static MObject paramAs;
	  static MObject defaultCurveLength;
	  static MObject stretchToFitLength;
	  static MObject reverseRoot;




private :

	bool  initParams ;
	bool initCurve ;
	bool initSurface ;
	MDoubleArray inParams;
	MFnNurbsCurve curveFn;
	MFnNurbsSurface surfFn;
	double crvLen;
	int paramsV;
	double uMin,uMax,vMin,vMax;
	MTransformationMatrix::RotationOrder rotOrder;
	MMatrix rotMatrix;
	MTransformationMatrix matrixFn;
	double outR[3];
	MVector tan;
	MVector	normal;
	MVector	cross;
	double ratio;
	double defaultCurveLengthV;
	double uVal ;
	double inParam ;
	double inParamStretched;
	double inParamReversed ;
	MPoint outP;
	double reversed;
	double finalParam;
	MObject inCurveV;
	MObject inSurfaceV;

};
#endif 
