if (count allUnits == 0) exitWith {
	["There is no units in scenario", "Exception", false, "Ok"] call BIS_fnc_3DENShowMessage;
};

private _main = {
	{
		_unit = _x;
		
		_name = [_unit] call _getUnitName;

		_index = ((units group _unit) findIf {_x == _unit}) + 1;

		_defaultName = [_unit] call _getUnitNameFromStorage;

		_weapons = [_unit] call _getUnitWeapon;

		_TEXT = str _index + ": " + _name + _weapons;

		_unit set3DENAttribute ["description", _TEXT];
	}forEach allUnits;
};

private _getUnitName = {
	_unit = param[0];

	_name = (_unit get3DENAttribute "description")#0;

	if (count _name == 0) then {
		_name = getText (configFile >> "CfgVehicles" >> typeOf _unit >> "displayName");
	};

	_name;
};

private _getUnitWeapon = {
	_unit = param[0];

	_primary = getText (configFile >> "CfgWeapons" >> primaryWeapon _unit >> "displayName");
	_launcher = getText (configFile >> "CfgWeapons" >> secondaryWeapon _unit >> "displayName");
	_handgun = getText (configFile >> "CfgWeapons" >> handgunWeapon _unit >> "displayName");

	_TEXT = "";

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

private _getUnitNameFromStorage = {
	_unit = param[0];

	_unitID = get3DENEntityID _unit;

	_storageList = (UnitNamesStorage get3DENAttribute "Init");
};

private _createUnitNamesStorage = {
	
};

call _main;