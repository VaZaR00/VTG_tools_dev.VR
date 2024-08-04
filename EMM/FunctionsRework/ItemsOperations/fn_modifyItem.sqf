params["_tree", "_path", ["_amount", 1]];

if ((_tree tvData _path) in ["%EMM_CATEGORY%", "%EMM_ATTACHMENT_CATEGORY%"]) exitWith {};

private _itemName = _tree tvText _path;
private _itemAmount = _tree tvValue _path;
private _newAmount = [{_itemAmount + _amount}] call EMM_fnc_getAmount;
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
