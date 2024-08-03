private _EMM_itemCache = createHashMapFromArray (parsingNamespace getVariable ["EMM_itemCache", nil]);

if (isNil "_EMM_itemCache") exitWith {};

private _categories = keys _EMM_itemCache;
private _combo = EMM_equipUI#19;

_categories sort false;
{
	_combo lbAdd _x;
} forEach _categories;

(EMM_equipUI#0) lnbSetColumnsPos [0, 0.8];

_combo lbSetCurSel 0;