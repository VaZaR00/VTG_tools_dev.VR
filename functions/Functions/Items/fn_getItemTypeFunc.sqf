// Define a function to get the appropriate add command based on item type
params["_item", ["_full", false]];

private _itemsWithSlotTypes = ["Binocular", "Compass", "GPS", "LaserDesignator", "Map", "MineDetector", "NVGoggles", "Radio", "UAVTerminal", "Watch"];

private _getAddCommandByItemType = {
    params ["_item", "_full"];

    if ("comp$$" in _item) exitWith {
        "none";
    };

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
                case ("Accessory" in _type): {
                    private _parents = [configFile >> (_item call EMM_fnc_findRootConfig) >> _item, true] call BIS_fnc_returnParents;
                    if ((_parents findIf { "ace" in (toLower _x) }) != -1) then {
                        "AI"
                    } else {
                        "APWI"
                    }; 
                };
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
