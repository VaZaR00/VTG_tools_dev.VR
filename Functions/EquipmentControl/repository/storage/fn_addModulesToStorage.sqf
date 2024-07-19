params["_data"];

private _storage = call EMM_fnc_getModulesStorage;

_storage insert _data;

[_storage] call EMM_fnc_setStorage;