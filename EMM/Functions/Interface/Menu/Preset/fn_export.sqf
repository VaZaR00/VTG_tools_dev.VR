params[["_one", false]];

private _name = "";

if (_one) then {
	_name = EMM_Current_Module;
};

if (_name == "none") exitWith {
	["No saved module opened"] call EMM_fnc_message;	
};

private _storage = [false, false, _name] call EMM_fnc_getModulesStorage;

if (_name isEqualTo false) exitWith {
	["No module data"] call EMM_fnc_message;	
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