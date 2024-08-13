params[['_name', EMM_var_MISSION_PRESET_mis]];

private _storage = [] call EMM_fnc_getPresetsStorage;
if (count _storage == 0) exitWith {};

_storage deleteAt _name;

[_storage] call EMM_fnc_setPresetsStorage;