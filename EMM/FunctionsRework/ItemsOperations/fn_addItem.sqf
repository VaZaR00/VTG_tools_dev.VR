params["_itemData", "_tree", "_path"];

private _name = _itemData#0;
private _class = _itemData#1;
private _pic = _itemData#2;
private _func = _itemData#3;
private _amount = _itemData#4;

_tree tvExpand _path;

_path pushBack (_tree tvAdd [_path, _name]);
_tree tvSetTooltip [_path, _class];
_tree tvSetPicture [_path, _pic];
_tree tvSetValue [_path, _amount];
_tree tvSetData [_path, _func];

[_tree] call EMM_fnc_checkItemsLabels;