#include "..\..\..\..\defines.hpp";

private _browser = [0] call EMM_fnc_getFolders;
private _modules = [2] call EMM_fnc_getModules; //only module names
PR(_moduleNames) = keys _modules;

if (count _modules == 0) exitWith {
	call EMM_fnc_wipePreset;
	[nil] call EMM_fnc_setFoldersStorage;
};

private _realBrowserModules = _browser select { !((_x#1) in EMM_var_BROWSER_TYPES) || ((_x#2) in _moduleNames) }; 

private _browserOnlyNames = _realBrowserModules apply {_x#2};
private _notShown = _moduleNames select { !(_x in _browserOnlyNames) };

private _notShownMap = _notShown apply {[[], (MODULE_TYPE_DATA(_modules get _x, 0))#0, _x, 0]};

private _map = _realBrowserModules + _notShownMap;

if (count _map == 0) exitWith {};

[_map] call EMM_fnc_setFoldersStorage;