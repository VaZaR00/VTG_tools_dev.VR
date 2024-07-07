//_groups = param[0];

private _groups = get3DENSelected "group";

if (count _groups == 0) then {
	_groups = allGroups;
};

private _main = {	
	{
		_squad = _x;
		_squadName = "";
		_squadDefaultName = _x getVariable ["VTG_fnc_squadDefaultName", false];
		
		if (_squadDefaultName isEqualTo false) then {
			_squadDefaultName = groupId _squad;
			_squad setVariable ["VTG_fnc_squadDefaultName", _squadDefaultName];
		} else { continue; };

		_squad setGroupId [_squadDefaultName];

		_squadIndex = (groups (side _squad)) find _squad;

		//_squadCallsign = [_squadCallsign, _squadDefaultName] call _removeRepeats;

		_squadCallsign = [_squadIndex] call _setSquadCallsign;

		if !(_squadCallsign in _squadDefaultName) then {
			_squadName = _squadCallsign + " | " + _squadDefaultName;
		}else {continue};

		_squad setGroupId [_squadName];

		[_squad, _squadName] call _setSquadNameInLobbyManager;
	}forEach _groups;
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
	_index2 = param[0] + 1; //get argument
	_index1 = 1;

	_callSign = "Alpha ";

	while {_index1 > 6} do {
		_index1 = _index1 + 1;
		_index2 = _index2 - 6;
	};

	_callSign = _callSign + str _index1 + "-" + str _index2;

	_callSign; //return value
};

private _setSquadNameInLobbyManager = {
	_squad = param[0];
	_squadName = param[1];

	_squadLead = (units _squad)#0;
	_squadLeadName = _squadLead get3DENAttribute "description";
	
	_squadName = _squadLeadName#0 + "@" + _squadName;

	if !("@" in _squadLeadName#0) then {
		_squadLead set3DENAttribute ["description", _squadName];
	};
};

call _main;  //START

//[str groups west,  0, 6] call BIS_fnc_3DENNotification;