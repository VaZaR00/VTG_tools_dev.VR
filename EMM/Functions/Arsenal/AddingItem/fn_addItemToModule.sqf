params['_itemData', '_category', '_tree'];

private _name = _itemData#0;
private _class = _itemData#1;
private _pic = _itemData#2;
private _func = _itemData#3;
private _amount = _itemData#4;

if (_amount > 1) then {
	_name = format["%1 x %2", _amount, _name];
	_itemData set [0, _name];
};

private _comparePath = {
	params["_path1"];

	private _path2 = +EMM_attachs_currentWeapon_path;
	private _count = count _path2;
	_path1 resize _count;
	_path2 isEqualTo _path1;
};

private _treeMap = [_tree] call EMM_fnc_treeMapper;

private _path = [];
private _categoryType = "%EMM_CATEGORY%";

if (count EMM_attachs_currentWeapon_path != 0) then {
	_path = +EMM_attachs_currentWeapon_path;
	_tree tvExpand EMM_attachs_currentWeapon_path;
	_categoryType = "%EMM_ATTACHMENT_CATEGORY%";
};

//modify
private _peekItem = _treeMap select {
	private _itemPath = +(_x#0);
	_itemPath deleteAt (count _itemPath - 1);
	private _categType = _tree tvData _itemPath;

	((_x#4) == _class) && 
	(_categType == _categoryType) &&
	(
		(count EMM_attachs_currentWeapon_path == 0) ||
		([+(_x#0)] call _comparePath)
	)
};

if (
	((count _peekItem) != 0)
) exitWith {
	_path = _peekItem#0#0;
	
	[_tree, _path, _amount] call EMM_fnc_modifyItem;
};

//add
private _peekCategory = _treeMap select {
	(_category in (_x#2)) && 
	((_x#1) == _categoryType) &&
	(
		(count EMM_attachs_currentWeapon_path == 0) ||
		([+(_x#0)] call _comparePath)
	)
};

if (
	((count (_peekCategory)) == 0)
) then {
	private _index = _tree tvAdd [_path, _category];
	_path pushBack _index;
	_tree tvSetData [_path, _categoryType];
}else{
	_path = _peekCategory#0#0;
};

[_itemData, _tree, _path] call EMM_fnc_addItem;