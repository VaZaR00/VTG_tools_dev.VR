params ["_classname"];
private _result = "configNull";
private _rootConfigs = ["CfgVehicles", "CfgWeapons", "CfgMagazines", "CfgAmmo", "CfgPatches", "CfgGroups", "CfgHints", "CfgMarkers", "CfgSounds", "cfgGlasses"];
{
	private _config = configFile >> _x >> _classname;
	if (_config != configNull) exitWith {
		_result = _x 
	};
} forEach _rootConfigs;
_result;