#include "..\..\..\..\defines.hpp";

disableSerialization;
if (EMM_Current_Module == "%none%") exitWith {};

private _targetsCombo = EMM_equipUI#7;
private _type = [_targetsCombo lbData (lbCurSel _targetsCombo)];

if ((_type#0) == "edit") then {
	_type = EMM_moduleTargets;
};
private _moduleItemsList = call EMM_fnc_parseModuleItemsTree;
[EMM_Current_Module, _type, _moduleItemsList, ISNIL(EMM_Current_Module_type, 0)] call EMM_fnc_updateModule;

call EMM_fnc_checkForComposites;

if (EMM_MODULE_SAVE_MASSAGE_ON) then {
	["Modules data saved"] call EMM_fnc_message;
};