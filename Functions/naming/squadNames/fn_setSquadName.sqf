params["_squad"];

private _main = {
	private _squadName = "";
	private _squadDefaultName = _squad getVariable ["VTG_fnc_squadDefaultName", nil];
	
	if !(isNil "_squadDefaultName") exitWith {};

	_squadDefaultName = groupId _squad;
	_squad setVariable ["VTG_fnc_squadDefaultName", _squadDefaultName];

	_squad setGroupId [_squadDefaultName];

	private _squadIndex = (groups (side _squad)) find _squad;

	//_squadCallsign = [_squadCallsign, _squadDefaultName] call _removeRepeats;

	private _squadCallsign = [_squadIndex] call _setSquadCallsign;

	if !(_squadCallsign in _squadDefaultName) then {
		_squadName = _squadCallsign + " | " + _squadDefaultName;
	}else {continue};

	_squad setGroupId [_squadName];

	[_squadName] call _setSquadNameInLobbyManager;
};

/*
_removeRepeats = {
	_squadCallsign = param[0];
	_squadDefaultName = param[1];

	_trimmedSquadDefaultName = _squadDefaultName trim [" ", 0];
	_trimmedSquadCallsign = _squadDefaultName trim [" ", 0];

	_result = _trimmedSquadDefaultName trim _trimmedSquadCallsign;
};
*/
private _setSquadCallsign = {
	private _index2 = param[0] + 1; //get argument
	private _index1 = 1;

	private _callSign = "Alpha ";

	while {_index1 > 6} do {
		_index1 = _index1 + 1;
		_index2 = _index2 - 6;
	};

	_callSign = _callSign + str _index1 + "-" + str _index2;

	_callSign; //return value
};

private _setSquadNameInLobbyManager = {
	params["_squadName"];

	private _squadLead = (units _squad)#0;
	private _squadLeadName = _squadLead get3DENAttribute "description";
	
	_squadName = (_squadLeadName#0) + "@" + _squadName;

	if !("@" in (_squadLeadName#0)) then {
		[str [_squadName, _squadLead]] call VTG_fnc_message;
		_squadLead set3DENAttribute ["description", _squadName];
	};
};

call _main;  //START