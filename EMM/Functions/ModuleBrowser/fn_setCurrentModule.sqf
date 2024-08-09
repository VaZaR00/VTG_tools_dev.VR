params ["_tree", "_sel"];

EMM_Current_Module = "none";
EMM_moduleTargets = nil;

private _module = _tree tvText _sel;
[_module] call EMM_fnc_loadModuleData;
[_tree, _sel] call EMM_fnc_setOpenedModuleColor;

EMM_Current_Module = _module;
EMM_Current_Module_path = +_sel;

_tree tvSetCurSel _sel;