private _rifles = []; 
private _pistols = []; 
private _launchers = []; 
private _magazines = []; 
private _items = [];
private _binoculars = [];
private _sights = [];
private _pointers = [];
private _muzzle = [];
private _bipod = [];
private _uniforms = [];
private _vests = [];
private _helmets = [];
private _backpacks = []; 
private _goggles = [];
private _nvgs = [];
private _devices = [];

private _all = [
	_rifles,
	_pistols,
	_launchers,
	_magazines,
	_items,
	_binoculars,
	_sights,
	_pointers,
	_muzzle,
	_bipod,
	_uniforms,
	_vests,
	_helmets,
	_backpacks,
	_goggles,
	_nvgs,
	_devices
];

{
	private _configName = configName _x;
	_element = [getText (_x >> 'displayName'), _configName, getText (_x >> 'picture')];
	// if (([_configName] call EMM_fnc_getItemTypeFunc) isEqualTo 2) then {
	// 	_weapons pushBackUnique [getText (_x >> 'displayName'), _configName, getText (_x >> 'picture')];
	// } else {
	// 	_items pushBackUnique [getText (_x >> 'displayName'), _configName, getText (_x >> 'picture')];
	// };
	private _cateogry = _all#(_configName call EMM_fnc_getCategory);
	_cateogry pushBackUnique _element;
} forEach ('
	(getNumber(_x >> "scope") isEqualTo 2) && 
	([getText(_x >> "picture")] call EMM_fnc_validPic) && 
	!((getText (_x >> "displayName")) isEqualTo "") &&
	!(isClass(_x >> "LinkedItems"))
' configClasses (configFile >> 'CfgWeapons'));

{
	_magazines pushBackUnique [getText (_x >> 'displayName'), configName _x, getText (_x >> 'picture')];
} forEach ('(getNumber(_x >> "scope") isEqualTo 2) && {[getText(_x >> "picture")] call EMM_fnc_validPic}' configClasses (configFile >> 'CfgMagazines'));

{
	_backpacks pushBackUnique [getText (_x >> 'displayName'), configName _x, getText (_x >> 'picture')];
} forEach ('(getNumber(_x >> "scope") isEqualTo 2) && {(getText(_x >> "vehicleClass") isEqualTo "Backpacks")}' configClasses (configFile >> 'CfgVehicles'));

{
	_goggles pushBackUnique [getText (_x >> 'displayName'), configName _x, getText (_x >> 'picture')];
} forEach ('(getNumber(_x >> "scope") isEqualTo 2) && {[getText(_x >> "picture")] call EMM_fnc_validPic}' configClasses (configFile >> 'CfgGlasses'));

{
	_x sort true;
} forEach _all;

//return
[
    ["Rifles", _rifles],
	["Pistols", _pistols],
	["Launchers", _launchers],
    ["Uniforms", _uniforms],
    ["Vests", _vests],
    ["Helmets", _helmets],
    ["Backpacks", _backpacks],
    ["Magazines", _magazines],
	["Binoculars", _binoculars], 
	["Items", _items],
	["Devices", _devices],
	["Accessories/Sights", _sights], 
	["Accessories/Pointers", _pointers], 
	["Accessories/Muzzles", _muzzle], 
	["Accessories/Bipods", _bipod],
    ["Goggles", _goggles],
	["NVGoggles", _nvgs]
]; 

//item: [name, class, picture]