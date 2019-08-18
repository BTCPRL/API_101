#include "aimSolver.h"
#include <maya/MFnPlugin.h>


MStatus initializePlugin(MObject obj)
{
	MStatus stat;
	MFnPlugin fnPlugin(obj, "Marc English", "1.0", "Any");

	stat = fnPlugin.registerNode("aimSolver",
		aimSolver::typeId,
		&aimSolver::creator,
		&aimSolver::initialize
	);

	if (stat != MS::kSuccess)
		stat.perror("Could not register the aimSolver node");

	return stat;
}

MStatus uninitializePlugin(MObject object)
{
	MFnPlugin pluginFn;
	pluginFn.deregisterNode(aimSolver::typeId);

	return MS::kSuccess;
}