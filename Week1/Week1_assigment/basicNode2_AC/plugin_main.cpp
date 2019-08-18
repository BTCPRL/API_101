/*
filename:
plugin_main.cpp
description:
Contains two functions, initializePlugin and uninitializePlugin, which are called
by Maya when it loads and unloads the plugin. As such, this file can be thought of
as a 'front-end' for the plugin, similar to the way a 'main' file is the entry point
to a program.

Each time a new custom command is created and added to the plugin it needs to be
registered and deregistered by these functions. The same goes for custom nodes.
*/
#include <maya/MFnPlugin.h>
#include <maya/MGlobal.h>
#include "basicNode_AC.h"

MStatus initializePlugin(MObject obj) {
	MStatus status;
	MFnPlugin plugin(obj, "Alberto Caprioli", "1.0", "Any");

	// Register plugin
	status = plugin.registerNode("basicNode_AC", basicNode_AC::nodeId,
		basicNode_AC::creator,
		basicNode_AC::initialize);
	if (status != MS::kSuccess) {
		MGlobal::displayError("basicNode_AC failed to initialize\n");
	}
	return status;
}

MStatus uninitializePlugin(MObject obj) {
	MStatus status;
	MFnPlugin plugin(obj, "Alberto Caprioli", "1.0", "Any");

	// Register plugin
	status = plugin.deregisterNode(basicNode_AC::nodeId);

	if (status != MS::kSuccess) {
		MGlobal::displayError("basicNode_AC failed to uninitialize\n");
	}
	return status;
}