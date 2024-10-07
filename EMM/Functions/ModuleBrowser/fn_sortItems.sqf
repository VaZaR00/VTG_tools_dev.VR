#include "..\..\defines.hpp";

params[["_tree", EMM_equipUI#5]];

private _treeMap = [_tree] call EMM_fnc_treeMapper;

_treeMap = _treeMap apply {
	private _index = BROWSER_TYPE_DATA(_x#1, 1);
	(_x#2) insert [0, str _index];
	_x
};

private _sorted = [_treeMap, [], { _x#2 }] call BIS_fnc_sortBy;

{
	private _index = BROWSER_TYPE_DATA(_x#1, 1);
	_tree tvSetValue [(_x#0), _forEachIndex + _index];
} forEach _sorted;

_tree tvSortByValueAll [[], true];

// call EMM_fnc_updateStorage;