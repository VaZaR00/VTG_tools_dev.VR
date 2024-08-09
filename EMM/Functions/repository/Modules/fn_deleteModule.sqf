params[["_name", EMM_Current_Module], ["_showMsg", true]];

private _dataMap = [] call EMM_fnc_getModulesStorage;
_dataMap deleteAt _name;

[_dataMap] call EMM_fnc_setStorage;
EMM_Current_Module = "none";
call EMM_fnc_modulesAmount;

if (!_showMsg) exitWith {};

[nil, false] call EMM_fnc_hideStartMsg;

["Module deleted"] call EMM_fnc_message;
