/* 1 - magazines , 2 - weapons , 3 - backpacks , 4 - equipment , 5 - items , 6 - weapon accessories
params [
	['_itemClassName', '', ['']]
];
if (_itemClassName isEqualTo '') exitWith {-1};
private _itemType = [_itemClassName] call BIS_fnc_itemType;

switch (_itemType select 0) do {
	case "Weapon": {1};
	case "Mine": {1};
	case "Magazine": {1};
	case "Item": {
		if ((_itemType select 1) in [
			"AccessoryMuzzle", 
			"AccessoryPointer", 
			"AccessorySights", 
			"AccessoryBipod"
		]) then {6}else{5};
	};
	case "Equipment": { if ((_itemType select 1) == "Backpack" ) then {3} else {4} };
	default {4};
}
*/
// Define a function to get the appropriate add command based on item type
params["_item", ["_full", false]];

private _itemsWithSlotTypes = ["Binocular", "Compass", "GPS", "LaserDesignator", "Map", "MineDetector", "NVGoggles", "Radio", "UAVTerminal", "Watch"];

private _getAddCommandByItemType = {
    params ["_item", "_full"];

    private _itemType = _item call BIS_fnc_itemType;
    private _category = _itemType select 0;
    private _type = _itemType select 1;

    _func = switch (true) do {
        case (_category in ["Weapon", "VehicleWeapon"]): {
            "AW";
        };
        case (_category in ["Magazine", "Mine"]): {
            "AM";
        };
        case (_category == "Item"): {
            switch (true) do {
                case ("Accessory" in _type): { "APWI" };
                case (_type in _itemsWithSlotTypes): { "LI" };
                default { "AI" };
            };
        };
        case (_category == "Equipment"): {
            switch (_type) do {
                case "Uniform": { "FAU" };
                case "Vest": { "AV" };
                case "Backpack": { "AB" };
                case "Headgear": { "AH" };
				case "Glasses": { "AG" };
                default { "AI" };
            };
        };
        default { "AI" };
    };

    if (_full) then {_func call EMM_fnc_convertAttributeToFunction} else {_func};
};

[_item, _full] call _getAddCommandByItemType;
