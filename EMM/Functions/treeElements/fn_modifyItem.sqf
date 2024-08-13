params["_tree", "_path", ["_amount", 1]];

private _data = _tree tvData _path;
if ((EMM_var_Inv_Tree_Categories findIf {_x in _data}) != -1) exitWith {};

//check if its random in inventory tab
private _destination = EMM_var_ActiveModuleTab#0;
private _categoryPath = +_path;
_categoryPath deleteAt (count _categoryPath - 1);
private _category = _tree tvText _categoryPath;
if (
	(_destination == 0) and
	!("Random" in _category) and
	!(EMM_var_currentArsenalCategory in [
		"Items",
		"Magazines"
	]) and
	(count _path < 3)
) exitWith {};

private _itemName = _tree tvText _path;
private _itemAmount = _tree tvValue _path;
private _newAmount = _itemAmount + _amount;
private _name = [_tree tvTooltip _path] call EMM_fnc_getClassDisplayName;

_tree tvSetValue [_path, _newAmount];

if (_newAmount == 0) exitWith {
	[_tree, _path] call EMM_fnc_deleteItem;
};

if (_newAmount > 1) exitWith {
	_tree tvSetText [_path, format["%1 x %2", _newAmount, _name]];
};
_tree tvSetText [_path, _name];

[_tree] call EMM_fnc_checkItemsLabels;
