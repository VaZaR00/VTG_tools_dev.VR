params["_path", "_classname", ["_func", "def"], "_amount", "_name"];

if (_func == "def") then {
	_func = _classname call VTG_fnc_getItemTypeFunc;
};

private _itemText = if (_amount > 1) then {
	format ['%1 x %2', _amount, _name]
} else {
	_amount = 1;
	_name
};

private _tree = VTG_equipUI#1;
//setting item
_path pushBack (_tree tvAdd [_path, _itemText]);
private _cfg = _classname call VTG_fnc_findRootConfig;
private _image = getText (configFile >> _cfg >> _classname >> 'picture');

//setting item data
_tree tvSetData [_path, _func];
_tree tvSetValue [_path, _amount];
_tree tvSetPicture [_path, _image];
_tree tvSetTooltip [_path, _classname];
//select to show new item
_tree tvSetCurSel _path;

[_path, true] call VTG_fnc_checkIfRandom;

_tree tvSortByValue [[], true];

_path;
/*

module item:

text
Data
amount
tooltip

*/