params[["_name", EMM_Current_Module], ["_showMsg", true], ["_noReset", false]];

private _data = [] call EMM_fnc_getModules;
if (count _data == 0) exitWith {};

_data deleteAt _name;
[_data] call EMM_fnc_setModulesStorage;

if (_noReset) exitWith {};

call EMM_fnc_modulesAmount;
EMM_Current_Module = "%none%";
[false] call EMM_fnc_hideStartMsg;

if (!_showMsg) exitWith {};

["Module deleted"] call EMM_fnc_message;
