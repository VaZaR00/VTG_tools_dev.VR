params["_classname", "_arsenalCategories"];

//get the "Add" function of selected item
private _func = _classname call VTG_fnc_getItemTypeFunc;
private _destAndFunc = [_func] call VTG_fnc_itemDestination;

_path = [_destAndFunc#0, _arsenalCategories] call VTG_fnc_checkCategories;
private _amount = _path call VTG_fnc_getAmountIfStack;
[_path, _classname, _destAndFunc#1, _amount] call VTG_fnc_peekItem;