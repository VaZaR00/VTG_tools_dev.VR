params[["_destination", "Inventory"], "_arsenalCategory", ["_categoryIndex", 0]];
private _path = [];
private _inventoryTree = VTG_equipUI#1;

if (_destination != "Inventory") then {
	_path = [_inventoryTree, _path, _destination] call VTG_fnc_iterate;
};

_path = [_inventoryTree, _path, _arsenalCategory] call VTG_fnc_iterate;

_path; 