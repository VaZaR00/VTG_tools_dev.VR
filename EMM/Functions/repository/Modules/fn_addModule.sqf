params["_data"];

private _storage = [] call EMM_fnc_getModules;

_storage insert _data;

[_storage] call EMM_fnc_setModulesStorage;