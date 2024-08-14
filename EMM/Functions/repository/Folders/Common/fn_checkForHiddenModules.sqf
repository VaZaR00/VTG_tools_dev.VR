private _browser = [0] call EMM_fnc_getFolders;
private _modules = [0] call EMM_fnc_getModules; //only module names

if (count _modules == 0) exitWith {
	call EMM_fnc_wipePreset;
	[nil] call EMM_fnc_setFoldersStorage;
};

private _realBrowserModules = _browser select { ((_x#1) != "%EMM_MODULE%") || ((_x#2) in _modules) };

private _browserOnlyNames = _realBrowserModules apply {_x#2};
private _notShown = _modules select { !(_x in _browserOnlyNames) };

private _notShownMap = _notShown apply {[[], "%EMM_MODULE%", _x, 0]};

private _map = _realBrowserModules + _notShownMap;

if (count _map == 0) exitWith {};

[_map] call EMM_fnc_setFoldersStorage;