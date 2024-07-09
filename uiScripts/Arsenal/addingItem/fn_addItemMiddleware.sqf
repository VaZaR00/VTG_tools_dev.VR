params["_classname", "_arsenalCategories", ["_isAttachment", false]];

//get the "Add" function of selected item
private _func = _classname call VTG_fnc_getItemTypeFunc;
private _destAndFunc = [_func] call VTG_fnc_itemDestination;
private _name = _classname call VTG_fnc_getModuleItemName;

_path = [];
if (_isAttachment) then {
	_path append VTG_currentWeaponPath;
	[_path, false] call VTG_fnc_checkForAttachLbl;
	_destAndFunc set [1, "AWI"];
};
_path = [_destAndFunc#0, _arsenalCategories, _path] call VTG_fnc_checkCategories;

private _amount = _path call VTG_fnc_getAmountIfStack;
[_path, _classname, _destAndFunc#1, _amount, _name] call VTG_fnc_peekItem;