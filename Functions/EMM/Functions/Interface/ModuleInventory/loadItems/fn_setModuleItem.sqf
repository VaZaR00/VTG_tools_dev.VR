params["_item", ["_isAttach", false], ["_parent", []]];

private _accessories = ["Sights", "Pointers", "Muzzles", "Bipods"];
private _items = ["Other", "Binoculars"];
private _all = [
    "Rifles",
    "Pistols",
    "Launchers",
    "Magazines",
    "Other",        //items
    "Binoculars",   //items
    "Sights",
    "Pointers",
    "Muzzles",
    "Bipods",
    "Uniforms",
    "Vests",
    "Helmets",
    "Backpacks",
    "Goggles",
    "NVGs",
    "Modules"
];


private _class = _item#0;
private _function = _item#1;
private _amount = _item#2;
private _name = _class call EMM_fnc_getClassDisplayName;

if ([[_class]] call EMM_fnc_checkIfFail) exitwith {};

if (EMM_validateFunctions) then {
    _function = [_class, _function] call EMM_fnc_validateFunction;
};

_amount = if (
    ("AI" in _function) ||
    (((_class call BIS_fnc_itemType)#0) == "Magazine")
) then {_amount} else {0};

private _cateogry = [_all#(_class call EMM_fnc_getCategory)];

if ((_cateogry#0) in _accessories) then {
	_cateogry insert [0, ["Accessories"]];
};
if ((_cateogry#0) in _items) then {
	_cateogry insert [0, ["Items"]];
};
////////////

private _path = [];
private _dest = [_function, false] call EMM_fnc_itemDestination;

if (_isAttach) then {
	_path append _parent;
	[_path, false] call EMM_fnc_checkForAttachLbl;
    if ((_cateogry#0) != "Magazines") then {
        _cateogry deleteAt 0;
    };
};

_path = [_dest#0, _cateogry, _path] call EMM_fnc_checkCategories;

[_path, _class, _function, _amount, _name] call EMM_fnc_peekItem;