params[["_tree", EMM_equipUI#5]];

private _treeMap = [_tree] call EMM_fnc_treeMapper;

private _getIndex = {
	params["_data"];
	switch (_data) do {
		case "%EMM_FOLDER%": {10000};
		case "%EMM_MODULE%": {20000};
	};
};

_treeMap = _treeMap apply {
	private _index = [_x#1] call _getIndex;
	(_x#2) insert [0, str _index];
	_x
};

private _sorted = [_treeMap, [], { _x#2 }] call BIS_fnc_sortBy;

{
	private _index = [_x#1] call _getIndex;
	_tree tvSetValue [(_x#0), _forEachIndex + _index];
} forEach _sorted;

_tree tvSortByValueAll [[], true];

call EMM_fnc_updateStorage;