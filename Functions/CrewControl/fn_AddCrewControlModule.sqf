if !(is3DEN) exitWith {};

private _main = {
	private _entities = call _getEntities;

	if (count (_entities#0) == 0) exitWith {
		["No vehicles selected"] call VTG_fnc_message;
	};
	if (count (_entities#1) == 0) exitWith {
		["No units selected"] call VTG_fnc_message;
	};

	private _messages = call _getMessagesText;

	private _script = format [
		"
		_vehicles = %1; 
		_crews = %2;
		_warning = %3;
		_crewMessage = %4;
		missionNamespace setVariable ['VTG_CrewControl_Vehicles', _vehicles];
		missionNamespace setVariable ['VTG_CrewControl_Crews', _crews];
		missionNamespace setVariable ['VTG_CrewControl_Warning', _warning];
		missionNamespace setVariable ['VTG_CrewControl_CrewMessage', _crewMessage];
		", 
		_entities#0, 
		_entities#1,
		str (_messages#0),
		str (_messages#1)
	];

	[_script, "DONT_DELETE_CrewControlData"] call VTG_fnc_setGLmodule;
};

private _getEntities = {
	private _entities = get3DENSelected "object";

	private _vehicles = [];
	private _crews = [];
	{
		private _varName = (_x get3DENAttribute "Name")#0;
		if (count _varName == 0) then {
			_x set3DENAttribute ["Name", "var_" + str get3DENEntityID _x];
			_varName = (_x get3DENAttribute "Name")#0;
		};

		if (_x in vehicles) then {
			_vehicles pushBack _varName;
		} else {
			_crews pushBack _varName;
		};
	}forEach _entities;

	private _result = [_vehicles, _crews]; 
	_result; //return
};


private _getMessagesText = {
	private _warning = "You are not a crew!";
	private _crewMessage = "You are a crew!";

	private _result = [_warning, _crewMessage];
	_result;
};

call _main;