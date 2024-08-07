params[["_search", ""]];
private _combo = EMM_equipUI#19;
private _sel = lbCurSel _combo;

private _EMM_itemCache = +(parsingNamespace getVariable ["EMM_itemCache", nil]);
if (isNil "_EMM_itemCache") exitWith {};

(EMM_equipUI#16) ctrlShow true; 

private _category = _combo lbText _sel;
EMM_currentArsenalCategory = _category;

//show hint about attachments
if (("Access" in _category) or ("Magaz" in _category)) then {
	(EMM_equipUI#10) ctrlShow true
} else { (EMM_equipUI#10) ctrlShow false }; 

private _items = _EMM_itemCache get _category;
private _arsenal = EMM_equipUI#0;

lnbClear _arsenal;

{
	private _name = _x#0;
	private _class = _x#1;
	private _pic = _x#2;

	if ((_search != "") && !((toLower _search) in (toLower _name))) then {continue};
	if !([_class] call EMM_Arsenal_filter) then {continue};

	private _rowIndex = _arsenal lnbAddRow [_name, ""];
	_arsenal lnbSetTooltip [[_rowIndex, 0], _class];
	_arsenal lnbSetPicture [[_rowIndex, 1], _pic];
	_arsenal lnbSetData [[_rowIndex, 0], _class];
} forEach _items;

(EMM_equipUI#16) ctrlShow false; 