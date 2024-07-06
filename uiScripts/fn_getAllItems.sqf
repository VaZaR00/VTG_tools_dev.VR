//weapons
private _weapons = []; 
private _magazines = []; //separate 
//items
private _items = [];
private _accessories = [];
//equipment
private _uniforms = [];
private _vests = [];
private _helmets = [];
private _backpacks = []; //separate
private _goggles = [];

{
	private _configName = configName _x;
	_element = [getText (_x >> 'displayName'), _configName, getText (_x >> 'picture')];
	// if (([_configName] call VTG_fnc_getItemTypeFunc) isEqualTo 2) then {
	// 	_weapons pushBackUnique [getText (_x >> 'displayName'), _configName, getText (_x >> 'picture')];
	// } else {
	// 	_items pushBackUnique [getText (_x >> 'displayName'), _configName, getText (_x >> 'picture')];
	// };
	switch ([_configName] call VTG_fnc_getItemTypeFunc) do {
		case "AW": { _weapons };
		case "AM": { _magazines };
		case "AI": { _items };
		case "LI": { _items };
		case "APWI": { _accessories };
		case "AU": { _uniforms };
		case "AV": { _vests };
		case "AH": { _helmets };
		case "AB": { _backpacks };
		case "AG": { _goggles };
		default { [] };
	} pushBackUnique _element;
} forEach ('(getNumber(_x >> "scope") isEqualTo 2) && ([getText(_x >> "picture")] call VTG_fnc_validPic) && !((getText (_x >> "displayName")) isEqualTo "")' configClasses (configFile >> 'CfgWeapons'));

{
	_magazines pushBackUnique [getText (_x >> 'displayName'), configName _x, getText (_x >> 'picture')];
} forEach ('(getNumber(_x >> "scope") isEqualTo 2) && {[getText(_x >> "picture")] call VTG_fnc_validPic}' configClasses (configFile >> 'CfgMagazines'));

{
	_backpacks pushBackUnique [getText (_x >> 'displayName'), configName _x, getText (_x >> 'picture')];
} forEach ('(getNumber(_x >> "scope") isEqualTo 2) && {(getText(_x >> "vehicleClass") isEqualTo "Backpacks")}' configClasses (configFile >> 'CfgVehicles'));

{
	_goggles pushBackUnique [getText (_x >> 'displayName'), configName _x, getText (_x >> 'picture')];
} forEach ('(getNumber(_x >> "scope") isEqualTo 2) && {[getText(_x >> "picture")] call VTG_fnc_validPic}' configClasses (configFile >> 'CfgGlasses'));

_weapons sort true;
_magazines sort true;
_items sort true;
_accessories sort true;
_uniforms sort true;
_vests sort true;
_helmets sort true;
_backpacks sort true;
_goggles sort true;

//return
[
    ["Weapons", _weapons],
    ["Magazines", _magazines],
    ["Items", _items],
    ["Accessories", _accessories],
    ["Uniforms", _uniforms],
    ["Vests", _vests],
    ["Helmets", _helmets],
    ["Backpacks", _backpacks],
    ["Goggles", _goggles]
]; 
