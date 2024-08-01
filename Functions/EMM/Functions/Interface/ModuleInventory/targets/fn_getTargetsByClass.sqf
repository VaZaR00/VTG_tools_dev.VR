private _classes = allUnits apply { typeOf _x };
private _unique = _classes arrayIntersect _classes;
private _names = _unique apply {
	private _displayName = getText (configFile >> "CfgVehicles" >> _x >> "displayName");
	private _class = _x;
	if (EMM_SHOW_TARGETS_CLASSES) then { //swap
		_class = _displayName;
		_displayName = _x;
	};
	[
		_displayName, 
		format["Apply for units of ""%1"" class", _class],
		_x //classname
	]};
_names;