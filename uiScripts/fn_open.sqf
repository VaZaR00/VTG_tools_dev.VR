// params [
// 	['_target', objNull, [objNull]]
// ];
// if (isNull _target) then {
// 	_target = if ((count (get3DENSelected 'object')) > 0) then {(get3DENSelected 'object') select 0} else {objNull};
// };
// if (isNull _target) exitWith {
// 	['No objects selected', 1] call VTG_fnc_message;
// };
// if ((getNumber (configFile >> 'CfgVehicles' >> typeOf _target >> 'maximumLoad')) isEqualTo 0) exitWith {
// 	['You can only add inventory to objects it space for it', 1] call VTG_fnc_message;
// };

//1 - create display

disableSerialization;
(findDisplay 313) createDisplay 'EquipmentModulesManager';

waitUntil {(!isNull (uiNamespace getVariable ['EquipmentModulesManager', displayNull]))};

//2 - get displays controls

VTG_equipUI = call VTG_fnc_getUIelements;

waitUntil {!(isNil 'VTG_equipUI')};

call VTG_fnc_loadTargetsCombo; //load combo of modules target units

(VTG_equipUI#10) ctrlShow false; //hide weapon attachments tree
(VTG_equipUI#11) ctrlShow false; //hide weapon attachments tree Close btn

//3 - load items cache for arsenal

if (isNil 'VTG_itemCache') then {
	VTG_itemCache = call VTG_fnc_getAllItems;
};

waitUntil {!(isNil 'VTG_itemCache')};

//load arsenal
[] spawn VTG_fnc_loadArsenal;
//[_display] call VTG_fnc_loadModuleInventory;

private _display = uiNamespace getVariable ['EquipmentModulesManager', displayNull];

(_display displayCtrl 1598) ctrlSetEventHandler ['KeyUp', '_this call VTG_fnc_onSearchKeyUp'];
//(_display displayCtrl 1501) ctrlSetEventHandler ['onTreeSelChanged', '_this call VTG_fnc_treeSelChanged'];
