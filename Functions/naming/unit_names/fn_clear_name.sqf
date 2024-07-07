if (count allUnits == 0) exitWith {
	["There is no units in scenario", "Exception", false, "Ok"] call BIS_fnc_3DENShowMessage;
};

{
	private _name = _x getVariable ["VTG_fnc_unitDefaultName", ["man"]];
	if (count _name == 1) then {
		_x set3DENAttribute ["description", _name#0];
	} else {
		_x set3DENAttribute ["description", _name];
	};
}forEach allUnits;
