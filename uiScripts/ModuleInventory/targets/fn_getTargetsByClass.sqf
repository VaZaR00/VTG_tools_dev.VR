private _classes = allUnits apply { typeOf _x };
private _unique = _classes arrayIntersect _classes;
private _names = _unique apply {
	[
		getText (configFile >> "CfgVehicles" >> _x >> "displayName"), 
		format["Apply for units of ""%1"" class", _x]
	]};
_names;