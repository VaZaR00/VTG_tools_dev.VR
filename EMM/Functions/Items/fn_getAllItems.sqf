#include "..\..\defines.hpp";

private _EMM_itemsCache = +EMM_itemsCache_scheme;

private _uniqueNames = createHashMap;
{
	private _configName = configName _x;
	private _name = getText (_x >> 'displayName');

	if (_uniqueNames getOrDefault [_name, false]) then {continue};

	_element = [_name, _configName, getText (_x >> 'picture')];
	
	private _cateogry = _EMM_itemsCache#(_configName call EMM_fnc_getCategory)#1;
	_cateogry pushBackUnique _element;

	_uniqueNames set [_name, true];
} forEach ('
	(getNumber(_x >> "scope") isEqualTo 2) && 
	{([getText(_x >> "picture")] call EMM_fnc_validPic) && 
	{!((getText (_x >> "displayName")) isEqualTo "")}}
' configClasses (configFile >> 'CfgWeapons'));

{
	(_EMM_itemsCache#4#1) pushBackUnique [getText (_x >> 'displayName'), configName _x, getText (_x >> 'picture')];
} forEach ('(getNumber(_x >> "scope") isEqualTo 2) && {[getText(_x >> "picture")] call EMM_fnc_validPic}' configClasses (configFile >> 'CfgMagazines'));

{
	(_EMM_itemsCache#3#1) pushBackUnique [getText (_x >> 'displayName'), configName _x, getText (_x >> 'picture')];
} forEach ('(getNumber(_x >> "scope") isEqualTo 2) && {(getText(_x >> "vehicleClass") isEqualTo "Backpacks")}' configClasses (configFile >> 'CfgVehicles'));

{
	(_EMM_itemsCache#15#1) pushBackUnique [getText (_x >> 'displayName'), configName _x, getText (_x >> 'picture')];
} forEach ('(getNumber(_x >> "scope") isEqualTo 2) && {[getText(_x >> "picture")] call EMM_fnc_validPic}' configClasses (configFile >> 'CfgGlasses'));

{
	(_x#1) sort true;
	(_x#1) insert [0, [["Nothing", "%NO_ITEM%", EMM_var_pic_NOTHING]]]
} forEach _EMM_itemsCache;

_EMM_itemsCache = createHashMapFromArray _EMM_itemsCache;
parsingNamespace setVariable ["EMM_itemsCache", _EMM_itemsCache];

_uniqueNames = nil;

//item: [name, class, picture]