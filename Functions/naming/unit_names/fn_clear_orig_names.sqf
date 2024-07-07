if (count allUnits == 0) exitWith {
	["There is no units in scenario", "Exception", false, "Ok"] call BIS_fnc_3DENShowMessage;
};

{
	_x setVariable ["VTG_fnc_unitDefaultName", nil];
}forEach allUnits;