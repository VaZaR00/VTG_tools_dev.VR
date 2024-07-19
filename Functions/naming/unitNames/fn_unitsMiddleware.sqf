params["_func"];

if (count allUnits == 0) exitWith {
	["There is no units in scenario"] call VTG_fnc_message;
};

private _units = get3DENSelected "object";

if (count _units == 0) then {
	_units = allUnits;
};
private _next = "";
private _msg = "";

switch (_func) do {
	case "claer": {
		_next = VTG_fnc_clearUnitName; 
		_msg = "Units names cleared";
	};
	case "def": {
		_next = VTG_fnc_setUnitsNameToDefault;
		_msg = "Units names default";
	};
	default { 
		_next = VTG_fnc_setUnitName;
		_msg = "Units Names set";
	};
};

{
	[_x] call _next;
} forEach _units;

[_msg] call VTG_fnc_message;
