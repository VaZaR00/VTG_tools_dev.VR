params ["_arsenal", "_selectionPath"];

disableSerialization;

private _main = {
	params ["_arsenal", "_selectionPath"];

	_category = _arsenal tvData [_selectionPath#0];
	_comboCtrl = _display displayCtrl 2100;

	if (_category == "Accessories") exitWith {
		_inventoryTree = _display displayCtrl 1500;
		_name = _arsenal tvData _selectionPath;
		for "_i" from 1 to (_inventoryTree tvCount []) do {
			_data = _inventoryTree tvData [_i];
			if (_data == "Weapons") then {
				_compatibleItems = [[_name] call VTG_fnc_getClassByName] call _getCompitableItem;
				if (_name in _compatibleItems) then {

				};
			};
		};
	};

	for "_i" from 1 to (lbSize _comboCtrl) do {
		if (_i > 3) then {
			_comboCtrl lbDelete _i;
		};
	};
};

private _getCompitableItem = {
	params ["_class"];
	_compatibleItems = getArray (configFile >> "CfgWeapons" >> _class >> "WeaponSlotsInfo" >> "CowsSlot" >> "compatibleItems");
	_compatibleItems append (getArray (configFile >> "CfgWeapons" >> _class >> "WeaponSlotsInfo" >> "MuzzleSlot" >> "compatibleItems"));
	_compatibleItems append (getArray (configFile >> "CfgWeapons" >> _class >> "WeaponSlotsInfo" >> "Pointer" >> "compatibleItems"));
	_compatibleItems append (getArray (configFile >> "CfgWeapons" >> _class >> "WeaponSlotsInfo" >> "UnderBarrelSlot" >> "compatibleItems"));
	_compatibleItems;
};

[_arsenal, _selectionPath] call _main;

