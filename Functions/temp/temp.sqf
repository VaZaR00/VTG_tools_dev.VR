player addEventHandler ["Fired",{(_this select 0) setVehicleAmmo 1}]


[_result, "test result"] call BIS_fnc_3DENShowMessage;

[text, type, duration, animate] call BIS_fnc_3DENNotification;


{
	_x set3DENAttribute ["description", "man"];
}forEach allUnits;



{
	_x setVariable ["OriginalRoleDesc", nil];
}forEach allUnits;


 /*
_createModule = {
    _script = param[0];

    _crewControlModule = create3DENEntity ["Logic", "Logic", [0,0,0]];

    _crewControlModule set3DENAttribute ["Name", "VTG_fnc_CrewControlScript"];
    _crewControlModule set3DENAttribute ["Init", _script];
};
*/


_w = "GF_deformMission" get3DENMissionAttribute "GF_deformString";

"GF_deformMission" set3DENMissionAttribute ["GF_deformString", ""];