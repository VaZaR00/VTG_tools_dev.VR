private _modules = [1] call EMM_fnc_getModules;
if (count _modules == 0) exitWith {};

_modules = toArray _modules;
private _composites = [];
{
	if ("%EMM_comp%" in (_modules#1#_forEachIndex#0)) then {
		_composites pushBack [_x, "%EMM_comp%", EMM_var_pic_MODULE];
	};
} forEach (_modules#0);

private _EMM_itemCache = +(parsingNamespace getVariable ["EMM_itemCache", nil]);
if (isNil "_EMM_itemCache") exitWith {};

_composites sort true;
_EMM_itemCache set ["Modules", _composites];
parsingNamespace setVariable ["EMM_itemCache", _EMM_itemCache];

if (isNil "EMM_var_currentArsenalCategory") exitWith {};
if (EMM_var_currentArsenalCategory == "Modules") then {
	[] call EMM_fnc_loadArsenalItems;
};