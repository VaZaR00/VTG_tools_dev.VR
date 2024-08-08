EMM_Arsenal_filter = "true";

private _categories = EMM_itemsCache_scheme apply {_x#0};
private _combo = EMM_equipUI#19;

//_categories sort false;
{
	_combo lbAdd _x;
} forEach _categories;

(EMM_equipUI#0) lnbSetColumnsPos [0, 0.8];

_combo lbSetCurSel 0;

call EMM_fnc_checkForComposites;