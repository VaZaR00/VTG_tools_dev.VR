private _arsenal = EMM_equipUI#0;

private _category = EMM_currentArsenalCategory;
private _module = EMM_ActiveModuleTab#1;

//---getting item data---
private _row = lnbCurSelRow _arsenal;

private _name = _arsenal lnbText [_row, 0];
private _class = _arsenal lnbData [_row, 0];
private _pic = _arsenal lnbPicture [_row, 1];
private _func = [_class] call EMM_fnc_getItemTypeFunc;
private _amount = [] call EMM_fnc_getAmount;

private _itemData = [_name, _class, _pic, _func, _amount];
//-----------------------

private _comparePath = {
	params["_path1"];

	private _path2 = EMM_attachs_currentWeapon_path;
	private _count = count _path2;
	_path1 resize _count;
	_path2 isEqualTo _path1;
};

private _moduleTreeMap = [_module] call EMM_fnc_treeMapper;

private _path = [];
private _categoryType = "%EMM_CATEGORY%";

if (count EMM_attachs_currentWeapon_path != 0) then {
	_path = +EMM_attachs_currentWeapon_path;
	_module tvExpand EMM_attachs_currentWeapon_path;
	_categoryType = "%EMM_ATTACHMENT_CATEGORY%";
};

//modify
private _peekItem = _moduleTreeMap select {
	private _itemPath = +(_x#0);
	_itemPath deleteAt (count _itemPath - 1);
	private _categType = _module tvData _itemPath;

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
	
	[_module, _path, _newAmount] call EMM_fnc_modifyItem;
};

//add
private _peekCategory = _moduleTreeMap select {
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
	private _index = _module tvAdd [_path, _category];
	_path pushBack _index;
	_module tvSetData [_path, _categoryType];
}else{
	_path = _peekCategory#0#0;
};

[_itemData, _module, _path] call EMM_fnc_addItem;