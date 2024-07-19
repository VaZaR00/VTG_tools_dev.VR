params[["_destination", "Inventory"], "_arsenalCategories", ["_path", []]];

private _inventoryTree = EMM_equipUI#1;

if (_destination != "Inventory") then {
	_path = [_inventoryTree, _path, _destination] call EMM_fnc_iterate;
};

for "_i" from 0 to (count _arsenalCategories - 1) do {
	_path = [_inventoryTree, _path, _arsenalCategories#_i] call EMM_fnc_iterate;
};
_path;