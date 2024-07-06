private _inventoryTree = VTG_equipUI#1;

params[["_all", false], ["_selectItem", tvCurSel _inventoryTree]];

if (count _selectItem == 0) exitWith {['Nothing selected', 1] call VTG_fnc_message};

if (_all) exitWith {
	_inventoryTree tvDelete _selectItem;
	private _category = _selectItem#1;
	private _destination = _selectItem#0;
	if ((_inventoryTree tvCount [_destination, _category]) == 0) then {
		_inventoryTree tvDelete [_destination, _category];
	};
	if ((_inventoryTree tvCount [_destination]) == 0) then {
		_inventoryTree tvDelete [_destination];
	};
	[] call VTG_fnc_updateAddFunc;
};

[_selectItem, -1] call VTG_fnc_modifyModuleItem;
[] call VTG_fnc_updateAddFunc;