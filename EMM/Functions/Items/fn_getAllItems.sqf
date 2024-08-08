private _EMM_itemsCache = +EMM_itemsCache_scheme;

{
	private _configName = configName _x;
	_element = [getText (_x >> 'displayName'), _configName, getText (_x >> 'picture')];
	// if (([_configName] call EMM_fnc_getItemTypeFunc) isEqualTo 2) then {
	// 	_weapons pushBackUnique [getText (_x >> 'displayName'), _configName, getText (_x >> 'picture')];
	// } else {
	// 	_items pushBackUnique [getText (_x >> 'displayName'), _configName, getText (_x >> 'picture')];
	// };
	private _cateogry = _EMM_itemsCache#(_configName call EMM_fnc_getCategory)#1;
	_cateogry pushBackUnique _element;
} forEach ('
	(getNumber(_x >> "scope") isEqualTo 2) && 
	([getText(_x >> "picture")] call EMM_fnc_validPic) && 
	!((getText (_x >> "displayName")) isEqualTo "") &&
	!(isClass(_x >> "LinkedItems"))
' configClasses (configFile >> 'CfgWeapons'));

{
	(_EMM_itemsCache#7#1) pushBackUnique [getText (_x >> 'displayName'), configName _x, getText (_x >> 'picture')];
} forEach ('(getNumber(_x >> "scope") isEqualTo 2) && {[getText(_x >> "picture")] call EMM_fnc_validPic}' configClasses (configFile >> 'CfgMagazines'));

{
	(_EMM_itemsCache#3#1) pushBackUnique [getText (_x >> 'displayName'), configName _x, getText (_x >> 'picture')];
} forEach ('(getNumber(_x >> "scope") isEqualTo 2) && {(getText(_x >> "vehicleClass") isEqualTo "Backpacks")}' configClasses (configFile >> 'CfgVehicles'));

{
	(_EMM_itemsCache#15#1) pushBackUnique [getText (_x >> 'displayName'), configName _x, getText (_x >> 'picture')];
} forEach ('(getNumber(_x >> "scope") isEqualTo 2) && {[getText(_x >> "picture")] call EMM_fnc_validPic}' configClasses (configFile >> 'CfgGlasses'));

{
	(_x#1) sort true;
} forEach _EMM_itemsCache;

(_EMM_itemsCache#11#1) insert [0, [["No Sight", "%NO_ACCESSORY%", ""]]];
(_EMM_itemsCache#12#1) insert [0, [["No Pointer", "%NO_ACCESSORY%", ""]]];
(_EMM_itemsCache#13#1) insert [0, [["No Muzzle", "%NO_ACCESSORY%", ""]]];
(_EMM_itemsCache#14#1) insert [0, [["No Bipod", "%NO_ACCESSORY%", ""]]];

//return
_EMM_itemsCache

//item: [name, class, picture]