/*
File:
plugin_main.cpp

Description:
Contains two functions, initializePlugin and uninitializePlugin, which are 
called by Maya when it loads and unloads the plugin. 

Author:
Alberto Caprioli
*/

#include "stretchyIK_AC.h"

#include <maya/MFnPlugin.h>
#include <maya/MGlobal.h>

MStatus initializePlugin(MObject obj) {
	/*
		Description:
			this method is called when the plug-in is loaded into Maya.  It 
			registers all of the services that this plug-in provides with 
			Maya.
	
		Arguments:
			obj - a handle to the plug-in object (use MFnPlugin to access it)
	*/
	MStatus status;
	MFnPlugin plugin(obj, "Alberto Caprioli", "1.0", "Any");

	// Register plugin
	status = plugin.registerNode("stretchyIK_AC", 
								 stretchyIK_AC::nodeId,
								 stretchyIK_AC::creator,
								 stretchyIK_AC::initialize);
	
	if (status != MS::kSuccess) {
		MGlobal::displayError("stretchyIK_AC failed to initialize\n");
	}
	return status;
}

MStatus uninitializePlugin(MObject obj) {
	/*
		Description:
			this method is called when the plug-in is unloaded from Maya. It 
			deregisters all of the services that it was providing.
	
		Arguments:
			obj - a handle to the plug-in object (use MFnPlugin to access it)
	*/

	MStatus status;
	MFnPlugin plugin(obj, "Alberto Caprioli", "1.0", "Any");

	// Register plugin
	status = plugin.deregisterNode(stretchyIK_AC::nodeId);

	if (status != MS::kSuccess) {
		MGlobal::displayError("stretchyIK_AC failed to uninitialize\n");
	}
	return status;
}