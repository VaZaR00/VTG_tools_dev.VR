//_groups = param[0];

private _groups = get3DENSelected "group";

if (count _groups == 0) then {
	_groups = allGroups;
};

private _main = {
	{
		_defaultName = _x getVariable ["VTG_fnc_squadDefaultName", false];
		if !(_defaultName isEqualTo false) then {
			_x setGroupId [_defaultName];
		};
		_x setVariable ["VTG_fnc_squadDefaultName", nil];
		[_x] call _sqLead;
	}forEach _groups;
};

private _sqLead = {
	_squad = param[0];
	_squadLead = (units _squad)#0;
	_name = (_squadLead get3DENAttribute "description")#0;

	_pos = _name find "@";

	if (_pos != -1) then {
		_name = _name select [0, _pos];
	};

	_squadLead set3DENAttribute ["description", _name];
};

call _main;