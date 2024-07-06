params["_catPath", "_classname", "_name", "_amount", ["_func", "def"]];

if (_func == "def") then {
	_func = _classname call VTG_fnc_getItemTypeFunc;
};
private _name = _classname call VTG_fnc_getModuleItemName;
private _itemText = format ['%1 x %2', _amount, _name];
private _inventoryTree = VTG_equipUI#1;
//setting item
private _index = _inventoryTree tvAdd [_catPath, _itemText];
private _path = [_catPath#0, _catPath#1, _index];
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