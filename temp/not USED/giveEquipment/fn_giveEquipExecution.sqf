private _modulesAndTargets = param[1];

{
	_module = _x#0;
	_units = _x#1;

	_moduleData = [_module] call EMM_fnc_getModuleStorageData;

	_script = [_moduleData] call EMM_fnc_parseModule;

	[_script, _units] call _executeModule;
} forEach _modulesAndTargets;

private _executeModule = {
	params["_script", "_units"];

	{
		_x call compile _script;
	} forEach _units;
};