/*
_rifles     0
_pistols    1
_launchers  2
_magazines  3
_items      4
_binoculars 5
_sights     6
_pointers   7
_muzzle     8
_bipod      9
_uniforms   10
_vests      11
_helmets    12
_backpacks  13
_goggles    14
_nvgs		15
modules 	16
*/

params["_class", ["_func", nil]];

private _type = if (isNil "_func") then {[_class] call EMM_fnc_getItemTypeFunc}else{_func};
private _itemType = _class call BIS_fnc_itemType;

switch (_type) do {
	case "AW": {
		private _baseclass = [configFile >> 'CfgWeapons' >> _class, true] call BIS_fnc_returnParents;
		switch (_baseclass select -2) do {
			case "RifleCore": { 0 /*rifles*/ };
			case "PistolCore": { 1 /*pistols*/ };
			case "LauncherCore": { 2 /*launchers*/ };
			default { 4 /*_items*/ };
		};
	};
	case "AM": { 3 /*_magazines*/ };
	case "AI": { 4 /*_items*/ };
	case "LI": {
		switch (_itemType#1) do {
			case "NVGoggles": { 15 /*_goggles*/ };
			case "Binocular": { 5 /*_binoculars*/ };
			case "LaserDesignator": { 5 /*_binoculars*/ };
			default { 4 /*_items*/ };
		};
	};
	case "APWI": {
		//accessories
		switch (_itemType#1) do {
			case "AccessorySights": { 6 /*_sights*/ };
			case "AccessoryPointer": { 7 /*_pointers*/ };
			case "AccessoryMuzzle": { 8 /*_muzzle*/ };
			case "AccessoryBipod": { 9 /*_bipod*/ };
			default { 4 /*_items*/ };
		};
	};
	case "FAU": { 10 /*_uniforms*/ };
	case "AU": { 10 /*_uniforms*/ };
	case "AV": { 11 /*_vests*/ };
	case "AH": { 12 /*_helmets*/ };
	case "AB": { 13 /*_backpacks*/ };
	case "AG": { 14 /*_goggles*/ };
	case "none": { 16 };
	default { 4 };
}
