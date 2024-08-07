/*
_rifles     0
_pistols    1
_launchers  2
_uniforms   3
_vests      4
_helmets    5
_backpacks  6
_magazines  7
_binoculars 8
_items      9
_devices    10
_sights     11
_pointers   12
_muzzle     13
_bipod      14
_goggles    15
_nvgs       16
_modules    17
*/
params["_class", "_func"];

if ("No " in _class) exitWith {
    switch (_class) do {
        case "No Sight": { 11 /*_sights*/ };
        case "No Pointer": { 12 /*_pointers*/ };
        case "No Muzzle": { 13 /*_muzzle*/ };
        case "No Bipod": { 14 /*_bipod*/ };
    };
};

private _type = if (isNil "_func") then {[_class] call EMM_fnc_getItemTypeFunc} else {_func};
private _itemType = _class call BIS_fnc_itemType;

switch (_type) do {
    case "AW": {
        private _baseclass = [configFile >> 'CfgWeapons' >> _class, true] call BIS_fnc_returnParents;
        switch (_baseclass select -2) do {
            case "RifleCore": { 0 /*_rifles*/ };
            case "PistolCore": { 1 /*_pistols*/ };
            case "LauncherCore": { 2 /*_launchers*/ };
            default { 9 /*_items*/ };
        };
    };
    case "AM": { 7 /*_magazines*/ };
    case "AI": { 9 /*_items*/ };
    case "LI": {
        switch (_itemType#1) do {
            case "NVGoggles": { 16 /*_nvgs*/ };
            case "Binocular": { 8 /*_binoculars*/ };
            case "LaserDesignator": { 8 /*_binoculars*/ };
            case "FirstAidKit": { 9 /*_items*/ };
            case "Medikit": { 9 /*_items*/ };
            case "Toolkit": { 9 /*_items*/ };
            default { 10 /*_devices*/ };
        };
    };
    case call {if (_type=="AWI") then {"AWI"} else {"APWI"}}: {
        //accessories
        if ((_itemType#0)=="Magazine") exitwith {7 /*_magazines*/};

        switch (_itemType#1) do {
            case "AccessorySights": { 11 /*_sights*/ };
            case "AccessoryPointer": { 12 /*_pointers*/ };
            case "AccessoryMuzzle": { 13 /*_muzzle*/ };
            case "AccessoryBipod": { 14 /*_bipod*/ };
            default { 9 /*_items*/ };
        };
    };
    case "FAU": { 3 /*_uniforms*/ };
    case "AU": { 3 /*_uniforms*/ };
    case "AV": { 4 /*_vests*/ };
    case "AH": { 5 /*_helmets*/ };
    case "AB": { 6 /*_backpacks*/ };
    case "AG": { 15 /*_goggles*/ };
    case "none": { 17 /*_modules*/ };
    default { 9 /*_items*/ };
}
