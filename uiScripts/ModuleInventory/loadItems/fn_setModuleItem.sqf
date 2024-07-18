params["_item", ["_isAttach", false], ["_parent", []]];

private _accessories = ["Sights", "Pointers", "Muzzles", "Bipods"];
private _all = [
    "Rifles",
    "Pistols",
    "Launchers",
    "Magazines",
    "Items",
    "Binoculars",  
    "Sights",
    "Pointers",
    "Muzzles",
    "Bipods",
    "Uniforms",
    "Vests",
    "Helmets",
    "Backpacks",
    "Goggles",
    "NVGs"  
];


private _class = _item#0;
private _function = _item#1;
private _amount = _item#2;
private _name = _class call VTG_fnc_getClassDisplayName;

private _cateogry = [_all#(_class call VTG_fnc_getCategory)];

if ((_cateogry#0) in _accessories) then {
	_cateogry insert [0, ["Accessories"]];
};
////////////

private _path = [];
private _dest = [_function, false] call VTG_fnc_itemDestination;

if (_isAttach) then {
	_path append _parent;
	[_path, false] call VTG_fnc_checkForAttachLbl;
    if ((_cateogry#0) != "Magazines") then {
        _cateogry deleteAt 0;
    };
};

_path = [_dest#0, _cateogry, _path] call VTG_fnc_checkCategories;

[_path, _class, _function, _amount, _name] call VTG_fnc_peekItem;