params[['_type', nil], ['_name', '', '']];

/*
	str - get by name

	0 - get list of module names (keys)
	1 - get names and types
*/

private _data = [] call EMM_fnc_getModulesStorage;
if (count _data == 0) exitWith {createHashMap};

if (isNil '_type') exitWith {
	+_data
};

if (_type isEqualType "") then {_name = _type};

if !(_name isEqualTo "") exitWith {
	_data = _data getOrDefault [_name, []];
	if (!(_data isEqualTo []) && {_type isEqualTo 1}) then {_data deleteAt 1};
	+_data
};

switch (_type) do {
	case 0: { keys _data };
	case 1: { _data apply { _y deleteAt 1 }; _data };
	default { _data };
};