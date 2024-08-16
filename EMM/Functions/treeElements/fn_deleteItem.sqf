params["_tree", "_path"];

_tree tvDelete _path;

private _selUpper = {
	params["_prevSel"];

	_prevSel set [-1, (_prevSel#-1) - 1];
	if ((_prevSel#-1) < 0) exitWith {};
	_tree tvSetCurSel _prevSel;
};
[+_path] call _selUpper;

_path deleteAt (count _path - 1);

private _data = _tree tvData _path;

if (
	(count _path > 0)
	&& 
	((EMM_var_Inv_Tree_Categories findIf {_x in _data}) != -1)
	&&
	((_tree tvCount _path) == 0)
) then {
	[_tree, _path] call EMM_fnc_deleteItem;
};

[_tree] spawn EMM_fnc_checkItemsLabels;
[false] call EMM_fnc_setNestParent;
