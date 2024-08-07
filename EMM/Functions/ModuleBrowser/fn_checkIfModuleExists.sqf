params[["_module", EMM_Current_Module]];

private _moduleData = [false, false, _module] call EMM_fnc_getModulesStorage;

if (
	(_moduleData isEqualTo createHashMap) ||
	(_moduleData isEqualTo [])
) exitWith {
	false
};

true