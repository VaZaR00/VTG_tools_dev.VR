params[["_name", EMM_Current_Module], ["_showMsg", true]];

private _data = [] call EMM_fnc_getModules;
if (count _data == 0) exitWith {};

_data deleteAt _name;

[_data] call EMM_fnc_setModulesStorage;
EMM_Current_Module = "%none%";
call EMM_fnc_modulesAmount;

if (!_showMsg) exitWith {};

[false] call EMM_fnc_hideStartMsg;

["Module deleted"] call EMM_fnc_message;
