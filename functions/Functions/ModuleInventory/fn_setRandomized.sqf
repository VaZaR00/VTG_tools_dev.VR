private _tree = EMM_ActiveModuleTab#1;

private _sel = tvCurSel _tree;
private _data = _tree tvData _sel;

if ((EMM_var_Inv_Tree_Categories findIf {_x in _data}) == -1) exitWith {
	["You can randomize categories only!"] call EMM_fnc_message;
};

private _isRand = true;
if ("@@" in _data) then {
	private _dataArr = _data splitString "@@";
	_isRand = call compile (_dataArr#1);
	_data = _dataArr#0;
};

private _newData = format["%1@@%2", _data, !_isRand];

_tree tvSetData [_sel, _newData];

[_tree] call EMM_fnc_checkItemsLabels;