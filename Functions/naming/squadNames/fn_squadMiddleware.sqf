params[["_func", ""]];

if (count allGroups == 0) exitWith {
	["There is no squads in scenario"] call VTG_fnc_message;
};

private _groups = get3DENSelected "group";

if (count _groups == 0) then {
	_groups = allGroups;
};
private _next = "";
private _msg = "";

switch (_func) do {
	case "claer": {
		_next = VTG_fnc_clearSqNames; 
		_msg = "Squad names cleared";
	};
	case "def": {
		_next = VTG_fnc_setSqNameToDefault;
		_msg = "Squad names default";
	};
	default { 
		_next = VTG_fnc_setSquadName;
		_msg = "Squad Names set";
	};
};

{
	[_x] call _next;
}forEach _groups;

[_msg] call VTG_fnc_message;