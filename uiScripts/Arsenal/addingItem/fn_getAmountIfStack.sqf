private _invTree = VTG_equipUI#1;
private _sel = tvCurSel _invTree;
private _func = _invTree tvData _sel;

_sel deleteAt (count _sel - 1);

private _amount = 0;

if (
	("AI" in _func)||
	("AM" in _func)||
	((_invTree tvText _sel) == "Magazines")
) then {
	_amount = call VTG_fnc_getAmountInput;
};
_amount;