params["_tree", "_path"];

_tree tvDelete _path;

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

[_tree] call EMM_fnc_checkItemsLabels;
[false] call EMM_fnc_setNestParent;
