params["_group"];

private _main = {
	private _defaultName = _group getVariable ["VTG_fnc_squadDefaultName", nil];
	if (isNil "_defaultName") then {
		_defaultName = "";
	};
	_group setGroupId [_defaultName];
	_group setVariable ["VTG_fnc_squadDefaultName", nil];
	call _sqLead;
};

private _sqLead = {
	private _squadLead = (units _group)#0;
	private _name = (_squadLead get3DENAttribute "description")#0;

	private _pos = _name find "@";

	if (_pos != -1) then {
		_name = _name select [0, _pos];
	};

	_squadLead set3DENAttribute ["description", _name];
};

call _main;