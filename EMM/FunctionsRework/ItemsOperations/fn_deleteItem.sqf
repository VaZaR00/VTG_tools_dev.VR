params["_tree", "_path"];

_tree tvDelete _path;

_path deleteAt (count _path - 1);

if (
	(count _path > 0)
	&& 
	((_tree tvData _path) in ["%EMM_CATEGORY%", "%EMM_ATTACHMENT_CATEGORY%"])
	&&
	((_tree tvCount _path) == 0)
) then {
	[_tree, _path] call EMM_fnc_deleteItem;
};

[_tree] call EMM_fnc_checkItemsLabels;
