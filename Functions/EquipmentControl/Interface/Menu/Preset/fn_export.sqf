params[["_one", false]];

private _name = "";

if (_one) then {
	_name = EMM_Current_Module;
};

private _storage = [false, false, _name] call EMM_fnc_getModulesStorage;

copyToClipboard str _storage;

_storage