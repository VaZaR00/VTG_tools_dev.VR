// [[_name, [_folders, _modulesData]], ...] (hashMap) - preset storage

params[['_type', nil], ['_name', EMM_var_MISSION_PRESET_mis]];

if !(_name isEqualType "") then {_name = EMM_var_MISSION_PRESET_mis};

private _storage = [] call EMM_fnc_getPresetsStorage;
if (_storage isEqualTo createHashMap) exitWith {[]};

private _presetData = _storage get _name;

if (isNil "_type") exitWith {_presetData};

_presetData#_type  //return