params["_displayName"];

private _cfgs = "getText (_x >> 'displayName') == _displayName" configClasses (configFile >> "CfgVehicles");
if (count _cfgs > 0) exitWith { _cfgs#0 };

_cfgs = "getText (_x >> 'displayName') == _displayName" configClasses (configFile >> "CfgWeapons");
if (count _cfgs > 0) exitWith { _cfgs#0 };

_cfgs = "getText (_x >> 'displayName') == _displayName" configClasses (configFile >> "CfgMagazines");
if (count _cfgs > 0) exitWith { _cfgs#0 };

_cfgs = "getText (_x >> 'displayName') == _displayName" configClasses (configFile >> "CfgGlasses");
if (count _cfgs > 0) exitWith { _cfgs#0 };
