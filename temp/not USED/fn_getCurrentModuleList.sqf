private _module = missionNamespace getVariable ["EMM_fnc_CurrentModule", false];

if (_module isEqualTo false) exitWith {
	//error
};

missionNamespace getVariable [_module, false];