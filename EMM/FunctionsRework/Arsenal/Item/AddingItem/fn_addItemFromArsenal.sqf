private _arsenal = EMM_equipUI#0;

private _category = (EMM_equipUI#19) lbText (lbCurSel (EMM_equipUI#19));
private _module = EMM_ActiveModuleTab#1;
private _destination = EMM_ActiveModuleTab#0;

//---getting item data---
private _row = lnbCurSelRow _arsenal;

private _name = _arsenal lnbText [_row, 0];
private _class = _arsenal lnbData [_row, 0];
private _pic = _arsenal lnbPicture [_row, 1];
private _func = [_class] call EMM_fnc_getItemTypeFunc;
private _amount = [_category, _destination] call EMM_fnc_getAmount;
//-----------------------

private _tabIndex = 0;

private _moduleTreeMap = [_module] call EMM_fnc_treeMapper;

private _path = [];
private _peekItem = _moduleTreeMap select {(_x#4) == _class};

if ((count _peekItem) != 0) exitWith {
	_path = _peekItem#0#0;
	private _itemName = _module tvText _path;
	private _itemAmount = _module tvValue _path;
	private _newAmount = _itemAmount + _amount;
	_newAmount = [_category, _destination, {_newAmount}] call EMM_fnc_getAmount;

	_module tvSetValue [_path, _newAmount];

	if (_newAmount > 1) exitWith {
		_module tvSetText [_path, format["%1 x %2", _newAmount, _name]];
	};
	_module tvSetText [_path, _name];
};

private _peekCategory = _moduleTreeMap select {(_x#2) == _category};

if ((count (_peekCategory)) == 0) then {
	private _index = _module tvAdd [[], _category];
	_path = [_index];
	_module tvSetData [_path, "EMM_CATEGORY"];
}else{
	_path = _peekCategory#0#0;
};

_module tvExpand _path;

_path pushBack (_module tvAdd [_path, _name]);
_module tvSetTooltip [_path, _class];
_module tvSetPicture [_path, _pic];
_module tvSetValue [_path, _amount];
_module tvSetData [_path, _func];
