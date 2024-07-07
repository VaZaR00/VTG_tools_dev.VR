params[["_destination", "Inventory"], "_arsenalCategories"];
private _path = [];
private _inventoryTree = VTG_equipUI#1;

if (_destination != "Inventory") then {
	_path = [_inventoryTree, _path, _destination] call VTG_fnc_iterate;
};

for "_i" from 0 to (count _arsenalCategories - 1) do {
	_path = [_inventoryTree, _path, _arsenalCategories#_i] call VTG_fnc_iterate;
};
_path;