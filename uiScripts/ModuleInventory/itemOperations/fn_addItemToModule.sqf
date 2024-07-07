params["_path", "_classname", "_name", ["_func", "def"]];

if (_func == "def") then {
	_func = _classname call VTG_fnc_getItemTypeFunc;
};
private _amount = _path call VTG_fnc_getAmountIfStack;
private _name = _classname call VTG_fnc_getModuleItemName;
private _itemText = if (_amount > 1) then {
	format ['%1 x %2', _amount, _name]
} else {
	_amount = 1;
	_name
};
private _inventoryTree = VTG_equipUI#1;
//setting item
_path pushBack (_inventoryTree tvAdd [_path, _itemText]);
private _cfg = _classname call VTG_fnc_findRootConfig;
private _image = getText (configFile >> _cfg >> _classname >> 'picture');

//setting item data
_inventoryTree tvSetData [_path, _func];
_inventoryTree tvSetValue [_path, _amount];
_inventoryTree tvSetPicture [_path, _image];
_inventoryTree tvSetTooltip [_path, _classname];
//select to show new item
_inventoryTree tvSetCurSel _path;
/*

module item:

text
Data
amount
tooltip

*/