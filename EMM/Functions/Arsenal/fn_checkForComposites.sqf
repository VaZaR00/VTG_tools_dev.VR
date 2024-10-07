#include "..\..\defines.hpp";

private _modules = [3] call EMM_fnc_getModules;
if (count _modules == 0) exitWith {};

_modules = toArray _modules;

private _composites = [];
{
	if ("%EMM_comp%" in (_modules#1#_forEachIndex#0)) then {
		PR(_typeIndex) = _modules#1#_forEachIndex#1;
		_typeIndex = ISNIL(_typeIndex, 0);
		PR(_pic) = TYPE_DATA_BY_I(_typeIndex, 0);
		_composites pushBack [_x, "%EMM_comp%", _pic];
	};
} forEach (_modules#0);

private _EMM_itemCache = +(parsingNamespace getVariable ["EMM_itemsCache", nil]);
if (isNil "_EMM_itemCache") exitWith {};

_composites sort true;
_EMM_itemCache set ["Modules", _composites];
parsingNamespace setVariable ["EMM_itemsCache", _EMM_itemCache];

if (isNil "EMM_var_currentArsenalCategory") exitWith {};
if (EMM_var_currentArsenalCategory == "Modules") then {
	[] call EMM_fnc_loadArsenalItems;
};