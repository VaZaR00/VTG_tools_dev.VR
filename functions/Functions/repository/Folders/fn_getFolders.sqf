params["_type"];

private _data = [] call EMM_fnc_getFoldersStorage;

if (isNil "_data") then {[]};
if (count _data == 0) exitWith {[]};

_data