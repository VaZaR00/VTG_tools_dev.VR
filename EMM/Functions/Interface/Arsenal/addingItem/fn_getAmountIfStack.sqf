private _invTree = EMM_equipUI#1;
private _sel = tvCurSel _invTree;
private _func = _invTree tvData _sel;

_sel deleteAt (count _sel - 1);

private _amount = 0;

if (
	//((_invTree tvText _sel) in ["Magazines", "Other"])
	("AI" in _func)||
	("AM" in _func)
) then {
	_amount = call EMM_fnc_getAmountInput;
};
_amount;