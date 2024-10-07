#include "..\..\..\defines.hpp";

params[['_type', nil], ['_name', '']];

/*
	str - get by name

	0 - get list of module names (keys)
	1 - get names and targets
	2 - get names and types
	3 - get names and targets and types
*/

private _data = [] call EMM_fnc_getModulesStorage;
if (count _data == 0) exitWith {createHashMap};

if (isNil '_type') exitWith {
	+_data
};

if (_type isEqualType "") then {_name = _type};

if !(_name isEqualTo "") exitWith {
	_data = _data getOrDefault [_name, []];
	if !(_data isEqualTo []) then {
		switch (_type) do {
			case 1: { _data deleteRange [1,2] };
			case 2: { _data deleteRange [0,2] };
			case 3: { _data deleteAt 1 };
			default { };
		};
	};
	+_data
};

switch (_type) do {
	case 0: { keys _data };
	case 1: { _data apply { _y deleteRange [1,2] }; _data };
	case 2: { _data apply { _y deleteRange [0,2] }; _data };
	case 3: { _data apply { _y deleteAt 1 }; _data };
	default { _data };
};