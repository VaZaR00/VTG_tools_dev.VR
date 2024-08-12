params['_type', '_data', ['_name', EMM_var_MISSION_PRESET_mis]];

private _storage = [] call EMM_fnc_getPresetsStorage;

private _presetData = _storage get _name;

if (isNil "_presetData") then {
	_presetData = [[],[]];
};

_presetData set [_type, _data];

_storage set [_name, _presetData];

[_storage] call EMM_fnc_setPresetsStorage;