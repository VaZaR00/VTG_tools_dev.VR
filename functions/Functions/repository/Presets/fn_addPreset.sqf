params['_data'];

private _storage = [] call EMM_fnc_getPresetsStorage;

_storage insert _data;

[_storage] call EMM_fnc_setPresetsStorage;