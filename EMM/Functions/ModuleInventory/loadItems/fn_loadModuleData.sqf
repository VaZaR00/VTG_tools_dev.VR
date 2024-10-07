#include "..\..\..\defines.hpp";

params[["_module", EMM_Current_Module]];

call EMM_fnc_resetModule;

(EMM_equipUI#15) ctrlSetText format['Module %1', str _module];

private _moduleData = [_module] call EMM_fnc_getModules;

private _targets = [];
private _items = [];
private _type = nil;

if (count _moduleData != 0) then {
	_targets = _moduleData#0;
	_items = _moduleData#1;
	_type = _moduleData#2;
};

[] call (([ISNIL(_type, nil)] call EMM_fnc_moduleTypeData)#1);

[_targets, (ISNIL(_type, 0))] call EMM_fnc_loadModuleTargets;

[_items] call EMM_fnc_loadModuleItems;

call EMM_fnc_failedToLoadReport; //check if there any problems

{
	[_x#0] call EMM_fnc_checkItemsLabels;
} forEach EMM_moduleTabs;

if !(ctrlShown (EMM_equipUI#13)) then {
	[true] call EMM_fnc_hideStartMsg;
};

EMM_moduleTargets = _targets;
EMM_Current_Module = _module;
EMM_Current_Module_type = ISNIL(_type, nil);

// if (!EMM_expandInvChkbox) then {
// 	{ (_x#1) tvCollapse [] } forEach EMM_moduleTabs;
// };