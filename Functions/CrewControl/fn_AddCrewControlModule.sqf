if !(is3DEN) exitWith {};

private _main = {
	_entities = call _getEntities;

	if (count (_entities#0) == 0) exitWith {
		["No vehicles selected"] call EMM_fnc_message;
	};
	if (count (_entities#1) == 0) exitWith {
		["No units selected"] call EMM_fnc_message;
	};

	_messages = call _getMessagesText;

	_script = format [
		"
		_vehicles = %1; 
		_crews = %2;
		_warning = %3;
		_crewMessage = %4;
		missionNamespace setVariable ['EMM_fnc_CrewControl_Vehicles', _vehicles];
		missionNamespace setVariable ['EMM_fnc_CrewControl_Crews', _crews];
		missionNamespace setVariable ['EMM_fnc_CrewControl_Warning', _warning];
		missionNamespace setVariable ['EMM_fnc_CrewControl_CrewMessage', _crewMessage];
		", 
		_entities#0, 
		_entities#1,
		str (_messages#0),
		str (_messages#1)
	];

	[_script] call _createModule;
};

private _getEntities = {
	_entities = get3DENSelected "object";

	_vehicles = [];
	_crews = [];
	{
		_varName = (_x get3DENAttribute "Name")#0;
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

	_result = [_vehicles, _crews]; 
	_result; //return
};

private _createModule = {
	_script = param[0];

	call _modifyOldModule;

	_crewControlModule = create3DENEntity ["Logic", "Logic", [0,0,0]];

	_crewControlModule set3DENAttribute ["Name", "DONT_CHANGE_EMM_fnc_CrewControlVariables"];
	_crewControlModule set3DENAttribute ["Init", _script];

	[_crewControlModule] call _setToLayer;
};

private _getMessagesText = {
	_warning = "You are not a crew!";
	_crewMessage = "You are a crew!";

	_result = [_warning, _crewMessage];
	_result;
};

private _modifyOldModule = {
	_allLogicModules = allMissionObjects "Logic";

	{
		_varName = (_x get3DENAttribute "Name")#0;
		if (_varName == "DONT_CHANGE_EMM_fnc_CrewControlVariables") then {
			delete3DENEntities [_x];
		};
	}forEach _allLogicModules;
};

private _setToLayer = {
	_module = param[0];


};

call _main;