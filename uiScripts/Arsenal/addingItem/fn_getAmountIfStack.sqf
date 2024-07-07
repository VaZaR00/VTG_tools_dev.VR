params["_path"];

private _invTree = VTG_equipUI#1;
private _sel = tvCurSel _invTree;
private _func = _invTree tvData _sel;

private _amount = 0;

if (("AI" in _func)||("AM" in _func)) then {
	_amount = call VTG_fnc_getAmountInput;
};
_amount;