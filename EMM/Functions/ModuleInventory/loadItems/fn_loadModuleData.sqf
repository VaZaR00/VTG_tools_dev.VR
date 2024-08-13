params[["_module", EMM_Current_Module]];

call EMM_fnc_resetModule;

(EMM_equipUI#15) ctrlSetText format['Module %1', str _module];

private _moduleData = [_module] call EMM_fnc_getModules;

private _targets = [];
private _items = [];

if (
	!(_moduleData isEqualTo createHashMap) &&
	!(_moduleData isEqualTo [])
) then {
	_targets = _moduleData#0;
	_items = _moduleData#1;
};

[_targets] call EMM_fnc_loadModuleTargets;

[_items] call EMM_fnc_loadModuleItems;

call EMM_fnc_failedToLoadReport; //check if there any problems

{
	[_x#0] call EMM_fnc_checkItemsLabels;
} forEach EMM_moduleTabs;

if !(ctrlShown (EMM_equipUI#13)) then {
	[nil, true] call EMM_fnc_hideStartMsg;
};

EMM_moduleTargets = _targets;

// if (!EMM_expandInvChkbox) then {
// 	{ (_x#1) tvCollapse [] } forEach EMM_moduleTabs;
// };