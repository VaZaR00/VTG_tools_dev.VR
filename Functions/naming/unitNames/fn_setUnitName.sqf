params["_unit"];

private _main = {
	private _name = _unit getVariable ["VTG_fnc_unitDefaultName", nil];
	
	if !(isNil "_name") exitWith {};

	_name = call _getUnitName;

	private _index = ((units group _unit) findIf {_x == _unit}) + 1;

	private _weapons = call _getUnitWeapon;

	private _TEXT = str _index + ": " + _name + _weapons;

	_unit set3DENAttribute ["description", _TEXT];
};

private _getUnitName = {
	private _name = (_unit get3DENAttribute "description")#0;

	if (count _name == 0) then {
		_name = getText (configFile >> "CfgVehicles" >> typeOf _unit >> "displayName");
	};

	_name;
};

private _getUnitWeapon = {
	private _primary = getText (configFile >> "CfgWeapons" >> primaryWeapon _unit >> "displayName");
	private _launcher = getText (configFile >> "CfgWeapons" >> secondaryWeapon _unit >> "displayName");
	private _handgun = getText (configFile >> "CfgWeapons" >> handgunWeapon _unit >> "displayName");

	private _TEXT = "";

	if (_primary != "") then {
		_TEXT = _TEXT + " (" + _primary;
	};
	if (_handgun != "") then { 
		_TEXT = _TEXT + ", " + _handgun + ")";
	} else {
		if (_TEXT != "") then {_TEXT = _TEXT + ")"};
	};
	if (_launcher != "") then { 
		_TEXT = _TEXT + " | " + _launcher;
	};

	_TEXT;
};

call _main;