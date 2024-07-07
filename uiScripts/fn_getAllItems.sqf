private _rifles = []; 
private _pistols = []; 
private _launchers = []; 
private _magazines = []; 
private _items = [];
private _sights = [];
private _pointers = [];
private _muzzle = [];
private _bipod = [];
private _uniforms = [];
private _vests = [];
private _helmets = [];
private _backpacks = []; 
private _goggles = [];
private _accessories = [];

private _all = [
	_rifles,
	_pistols,
	_launchers,
	_magazines,
	_items,
	_sights,
	_pointers,
	_muzzle,
	_bipod,
	_uniforms,
	_vests,
	_helmets,
	_backpacks,
	_goggles
];

{
	private _configName = configName _x;
	_element = [getText (_x >> 'displayName'), _configName, getText (_x >> 'picture')];
	// if (([_configName] call VTG_fnc_getItemTypeFunc) isEqualTo 2) then {
	// 	_weapons pushBackUnique [getText (_x >> 'displayName'), _configName, getText (_x >> 'picture')];
	// } else {
	// 	_items pushBackUnique [getText (_x >> 'displayName'), _configName, getText (_x >> 'picture')];
	// };
	switch ([_configName] call VTG_fnc_getItemTypeFunc) do {
		case "AW": {
			private _baseclass = [configFile >> 'CfgWeapons' >> _configName, true] call BIS_fnc_returnParents;
			switch (_baseclass select -2) do {
				case "RifleCore": { _rifles };
				case "PistolCore": { _pistols };
				case "LauncherCore": { _launchers };
				default { _items };
			};
		};
		case "AM": { _magazines };
		case "AI": { _items };
		case "LI": { _items };
		case "APWI": {
			private _itemType = _configName call BIS_fnc_itemType;
			switch (_itemType#1) do {
				case "AccessorySights": { _sights };
				case "AccessoryPointer": { _pointers };
				case "AccessoryMuzzle": { _muzzle };
				case "AccessoryBipod": { _bipod };
				default { _items };
			};
			//_accessories;
		};
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

{
	_x sort true;
} forEach _all;

private _accessories = [["Sights", _sights], ["Pointers", _pointers], ["Muzzles", _muzzle], ["Bipods", _bipod]];

//return
[
    ["Rifles", _rifles],
	["Pistols", _pistols],
	["Launchers", _launchers],
    ["Magazines", _magazines],
    ["Items", _items],
    ["Accessories", _accessories], //3 arrays
    ["Uniforms", _uniforms],
    ["Vests", _vests],
    ["Helmets", _helmets],
    ["Backpacks", _backpacks],
    ["Goggles", _goggles]
]; 
