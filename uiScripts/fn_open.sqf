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
disableSerialization;
(findDisplay 313) createDisplay 'EquipmentModulesManager';

if (isNil 'VTG_itemCache') then {
	VTG_itemCache = call VTG_fnc_getAllItems;
};
waitUntil {!(isNil 'VTG_itemCache')&&(!isNull (uiNamespace getVariable ['EquipmentModulesManager', displayNull]))};

private _display = uiNamespace getVariable ['EquipmentModulesManager', displayNull];
VTG_equipUI = call VTG_fnc_getUIelements;

waitUntil {!(isNil 'VTG_equipUI')};

[] spawn VTG_fnc_loadArsenal;
call VTG_fnc_loadTargetsCombo;
//[_display] call VTG_fnc_loadModuleInventory;

(_display displayCtrl 1598) ctrlSetEventHandler ['KeyUp', '_this call VTG_fnc_onSearchKeyUp'];
//(_display displayCtrl 1501) ctrlSetEventHandler ['onTreeSelChanged', '_this call VTG_fnc_treeSelChanged'];
