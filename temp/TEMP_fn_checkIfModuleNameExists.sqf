params[["_module", EMM_Current_Module]];

private _moduleData = [_module] call EMM_fnc_getModules;

if (count _moduleData != 0) exitWith {
	false
};

true