params['_itemData', '_category', '_tree', ['_isRand', true]];

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

	private _path2 = +EMM_nested_currnetParentPath;
	private _count = count _path2;
	_path1 resize _count;
	_path2 isEqualTo _path1;
};

private _treeMap = [_tree] call EMM_fnc_treeMapper;

private _path = [];
private _categoryType = EMM_var_Inv_Tree_Categories#0;

if (count EMM_nested_currnetParentPath != 0) then {
	_path = +EMM_nested_currnetParentPath;
	_tree tvExpand EMM_nested_currnetParentPath;
	_categoryType = EMM_var_Inv_Tree_Categories#1;
	//if (_path > 2) then {
		private _index = ["Unif", "Vest", "Backpack"] findIf {_x in EMM_nested_currnetParentName};
		private _newfunc = switch (_index) do {
			case 0: { "AIU" };
			case 1: { "AIV" };
			case 2: { "AIB" };
			default {_func};
		};
		_itemData set [3, _newfunc];
	//};
};

_categoryType = format["%1@@%2", _categoryType, _isRand];

//modify
private _peekItem = _treeMap select {
	private _itemPath = +(_x#0);
	_itemPath deleteAt (count _itemPath - 1);
	private _categType = _tree tvData _itemPath;

	((_x#4) == _class) && 
	(_categType in _categoryType) &&
	(
		(count EMM_nested_currnetParentPath == 0) ||
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
	private _existingCat = (_x#1);
	if ("@@" in _existingCat) then {
		_existingCat = (_existingCat splitString "@@")#0;
	};
	(_category in (_x#2)) && 
	(_existingCat in _categoryType) &&
	(
		(count EMM_nested_currnetParentPath == 0) ||
		([+(_x#0)] call _comparePath)
	)
};

if (
	((count (_peekCategory)) == 0)
) then {
	private _index = _tree tvAdd [_path, _category];
	private _pathTemp = +_path;
	_pathTemp deleteAt (-1);
	// [str [_itemData#0, _tree tvText _pathTemp, _path, EMM_nested_currnetParentPath, _index]] call EMM_fnc_message;
	_path pushBack _index;
	_tree tvSetData [_path, _categoryType];

	private _sortIndex = EMM_itemsCache_scheme findIf { _category == (_x#0) };
	_tree tvSetValue [_path, _sortIndex];
}else{
	_path = _peekCategory#0#0;
};
private _newPath = [_itemData, _tree, _path] call EMM_fnc_addItem;

_tree tvSortByValue [[], true];

_newPath