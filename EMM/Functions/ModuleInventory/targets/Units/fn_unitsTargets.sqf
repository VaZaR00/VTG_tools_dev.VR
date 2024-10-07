private _sides = call EMM_fnc_getTargetSides;
private _types = call EMM_fnc_getUnitTargetsClasses;
EMM_UNIT_TARGETS_OPTIONS = [["All", "Apply module to ALL PLAYABLE units", "all"]] + _sides + [["*Custom*", "Click ""Edit"" to set custom terms", "edit"]] + [["*Composite*", "Module can be added to other modules as item", "%EMM_comp%"]] + _types;
EMM_UNIT_TARGETS_OPTIONS