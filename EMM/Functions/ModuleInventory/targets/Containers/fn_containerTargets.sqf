private _types = call EMM_fnc_getContainerTargetsClasses;
EMM_CONTAINER_TARGETS_OPTIONS = [["All", "Apply module to ALL containers", "all"]] + [["*Custom*", "Click ""Edit"" to set custom terms", "edit"]] + [["*Composite*", "Module can be added to other modules as item", "%EMM_comp%"]] + _types;
EMM_CONTAINER_TARGETS_OPTIONS