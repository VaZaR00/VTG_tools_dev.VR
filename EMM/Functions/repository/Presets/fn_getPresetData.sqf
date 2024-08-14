// [[_name, [_folders, _modulesData]], ...] (hashMap) - preset storage

params[['_type', nil], ['_name', EMM_var_MISSION_PRESET_mis]];

if !(_name isEqualType "") then {_name = EMM_var_MISSION_PRESET_mis};

private _storage = [] call EMM_fnc_getPresetsStorage;
if (count _storage == 0) exitWith {[]};

private _presetData = _storage get _name;

if (isNil "_type") exitWith {_presetData};

if (isNil "_presetData") exitWith {[]};

_presetData#_type  //return