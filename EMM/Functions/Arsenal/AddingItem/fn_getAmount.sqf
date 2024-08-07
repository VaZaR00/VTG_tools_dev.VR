params[["_func", EMM_fnc_getAmountInput]];

private _amountInput = call _func;
private _destination = EMM_ActiveModuleTab#0;

if (
	(_destination != 0) || 
	(EMM_currentArsenalCategory in [
		"Items",
		"Magazines"
	])
) exitWith {
	_amountInput
};

1