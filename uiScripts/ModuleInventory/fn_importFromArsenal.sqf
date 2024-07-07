private _all = [
    "Rifles",
    "Pistols",
    "Launchers",
    "Magazines",
    "Items",
    "Sights",
    "Pointers",
    "Muzzle",
    "Bipod",
    "Uniforms",
    "Vests",
    "Helmets",
    "Backpacks",
    "Goggles"
];

private _accessories = ["Sights", "Pointers", "Muzzle", "Bipod"];

private _text = copyFromClipboard;
private _items = _text call VTG_fnc_parser_middleware;  //[_class, _function, _amount]

if (isNil "_items") exitWith {};

{
	private _class = _x#0;
	private _function = _x#1;
	private _amount = _x#2;

	private _cateogry = [_all#(_class call VTG_fnc_getCategory)];

	if (_cateogry in _accessories) then {
		_cateogry insert [0, "Accessories"];
	};

	private _dest = [_function, false] call VTG_fnc_itemDestination;

	private _path = [_dest#0, _cateogry] call VTG_fnc_checkCategories;

	[_path, _class, _function, _amount] call VTG_fnc_peekItem;
} forEach _items;

(VTG_equipUI#1) tvSortAll [[], false];