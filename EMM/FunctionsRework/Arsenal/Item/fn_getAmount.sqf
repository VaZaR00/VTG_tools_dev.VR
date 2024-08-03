params["_categ", "_dest", ["_func", EMM_fnc_getAmountInput]];

private _amountInput = call _func;

if (
	(_dest != 0) || 
	(_categ in [
		"Items",
		"Magazines"
	])
) exitWith {
	_amountInput
};

1