params['_type'];

/*
	str - get by name

	0 - get list of module names (keys)
	1 - get names and types
*/

private _data = [] call EMM_fnc_getModulesStorage;

if (_type isEqualType "") exitWith {
	_data getOrDefault [_name, []];
};

switch (_type) do {
	case 0: { keys _data };
	case 1: { _data apply { _y deleteAt 1 }; _data };
};