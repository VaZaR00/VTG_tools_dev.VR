/*
_rifles		0
_pistols	1
_launchers	2
_magazines	3
_items		4
_sights		5	
_pointers	6
_muzzle		7
_bipod		8
_uniforms	9
_vests		10
_helmets	11
_backpacks	12
_goggles	13
*/

params["_class"];

private _type = [_class] call VTG_fnc_getItemTypeFunc;

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
	case "LI": { 4 /*_items*/ };
	case "APWI": {
		//accessories
		private _itemType = _class call BIS_fnc_itemType;
		switch (_itemType#1) do {
			case "AccessorySights": { 5 /*_sights*/ };
			case "AccessoryPointer": { 6 /*_pointers*/ };
			case "AccessoryMuzzle": { 7 /*_muzzle*/ };
			case "AccessoryBipod": { 8 /*_bipod*/ };
			default { 4 /*_items*/ };
		};
	};
	case "AU": { 9 /*_uniforms*/ };
	case "AV": { 10 /*_vests*/ };
	case "AH": { 11 /*_helmets*/ };
	case "AB": { 12 /*_backpacks*/ };
	case "AG": { 13 /*_goggles*/ };
	default { [] };
}