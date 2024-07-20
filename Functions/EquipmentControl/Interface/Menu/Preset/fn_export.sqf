params[["_one", false]];

private _name = "";

if (_one) then {
	_name = EMM_Current_Module;
};

private _storage = [false, false, _name] call EMM_fnc_getModulesStorage;

_storage insert [["EMM_EXPORT", false]];

copyToClipboard str _storage;

["Data copied to clipboard"] call EMM_fnc_message;

_storage