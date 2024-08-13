params[["_module", EMM_Current_Module]];

private _moduleData = [_module] call EMM_fnc_getModules;

if (
	(_moduleData isEqualTo createHashMap) ||
	(_moduleData isEqualTo [])
) exitWith {
	false
};

true