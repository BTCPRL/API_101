#include "basicNode.h"
#include <maya/MFnPlugin.h>


MStatus initializePlugin( MObject obj )
{  
	MStatus stat; 

	MFnPlugin fnPlugin( obj, "Marco Giordano", "1.0", "Any");


	stat = fnPlugin.registerNode( "basicNode", basicNode::typeId,
								basicNode::creator,
								basicNode::initialize, 
								MPxNode::kDependNode );
	

	if( stat != MS::kSuccess )
		stat.perror( "could not register the poseReader node" );


	return stat;
}


MStatus uninitializePlugin(MObject object)

{
	MFnPlugin pluginFn;
	pluginFn.deregisterNode(basicNode::typeId);

	return MS::kSuccess;

}
