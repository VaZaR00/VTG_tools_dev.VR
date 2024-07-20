params[["_one", false]];

private _name = "";

if (_one) then {
	_name = EMM_Current_Module;
};

private _storage = [false, false, _name] call EMM_fnc_getModulesStorage;

if (count _storage == 0) exitWith {
	["Data empty"] call EMM_fnc_message;	
};

if (_name != "") then {
	private _data = +_storage;
	_storage = createHashMap;
	_storage insert [[_name, _data]];
};

_storage insert [["EMM_EXPORT", false]];

copyToClipboard str _storage;

["Data copied to clipboard"] call EMM_fnc_message;

_storage