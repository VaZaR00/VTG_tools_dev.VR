private _inventoryTree = VTG_equipUI#1;

params[["_path", tvCurSel _inventoryTree], "_amount"];

if (isNil "_amount") then {
	_amount = _path call VTG_fnc_getAmountIfStack
};

private _class = _inventoryTree tvTooltip _path;
private _name = _class call VTG_fnc_getModuleItemName;
private _value = _inventoryTree tvValue _path;

private _newAmount = (_value + _amount);

if (_newAmount == 0) exitWith {
	[true] call VTG_fnc_deleteModuleItems;
};
if (_newAmount == 1) exitWith {
	_inventoryTree tvSetText [_path, _name];
	_inventoryTree tvSetValue [_path, _newAmount];
};

_inventoryTree tvSetText [_path, (
	format [
		'%1 x %2', 
		_newAmount,
		_name
	]
)];
_inventoryTree tvSetValue [_path, _newAmount];
[] call VTG_fnc_updateAddFunc;