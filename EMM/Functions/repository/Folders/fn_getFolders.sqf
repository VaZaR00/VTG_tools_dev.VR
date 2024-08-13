params[["_type", 0]];

/*
	_type:
		0 - all
		1 - modules
		2 - folders
*/

private _data = [] call EMM_fnc_getFoldersStorage;

if (isNil "_data") then {[]};
if (count _data == 0) exitWith {[]};

switch (_type) do {
	case 0: { _data };
	case 1: {
		_data select { (_x#1) == "%EMM_MODULE%" };
	};
	case 2: {
		_data select { (_x#1) == "%EMM_FOLDER%" };
	};
	default { _data };
};