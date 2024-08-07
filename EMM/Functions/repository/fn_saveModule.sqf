disableSerialization;
if (EMM_Current_Module == "none") exitWith {};

private _targetsCombo = EMM_equipUI#7;
private _type = [_targetsCombo lbData (lbCurSel _targetsCombo)];

if ((_type#0) == "edit") then {
	_type = EMM_moduleTargets;
};
private _moduleItemsList = call EMM_fnc_parseModuleItemsTree;
[EMM_Current_Module, _type, _moduleItemsList] call EMM_fnc_saveItemToStorage;

call EMM_fnc_checkForComposites;
//["Modules data saved"] call EMM_fnc_message;