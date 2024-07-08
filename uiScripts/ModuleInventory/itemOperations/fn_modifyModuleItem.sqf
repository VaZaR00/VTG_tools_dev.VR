private _tree = VTG_equipUI#1;

params[["_path", tvCurSel _tree], "_amount"];

if (isNil "_amount") then {
	_amount = _path call VTG_fnc_getAmountIfStack
};

private _class = _tree tvTooltip _path;
private _name = _class call VTG_fnc_getModuleItemName;
private _value = _tree tvValue _path;

private _newAmount = (_value + _amount);

if (_class == "") exitWith {};
if (_newAmount == 0) exitWith {
	[true] call VTG_fnc_deleteModuleItems;
};
if (_newAmount == 1) exitWith {
	_tree tvSetText [_path, _name];
	_tree tvSetValue [_path, _newAmount];
};

_tree tvSetText [_path, (
	format [
		'%1 x %2', 
		_newAmount,
		_name
	]
)];
_tree tvSetValue [_path, _newAmount];
[] call VTG_fnc_updateAddFunc;