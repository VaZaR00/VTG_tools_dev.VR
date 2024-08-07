private _modules = [false, true] call EMM_fnc_getModulesStorage;
if ((str _modules) isEqualTo "[[any,[any]]]") exitWith {};
if (_modules isEqualTo createHashMap) exitWith {};

_modules = toArray _modules;
private _composites = [];
{
	if ("%EMM_comp%" in (_modules#1#_forEachIndex#0)) then {
		_composites pushBack [_x, "%EMM_comp%", "a3\3den\data\cfg3den\history\changeattributes_ca.paa"];
	};
} forEach (_modules#0);

private _EMM_itemCache = +(parsingNamespace getVariable ["EMM_itemCache", nil]);
if (isNil "_EMM_itemCache") exitWith {};

_EMM_itemCache set ["Modules", _composites];
parsingNamespace setVariable ["EMM_itemCache", _EMM_itemCache];

if (isNil "EMM_currentArsenalCategory") exitWith {};
if (EMM_currentArsenalCategory == "Modules") then {
	[] call EMM_fnc_loadArsenalItems;
};