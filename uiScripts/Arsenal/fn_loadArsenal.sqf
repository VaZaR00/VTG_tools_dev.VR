disableSerialization;
params [
	['_search', '', ['']],
	['_tree', VTG_equipUI#0],
	['_data', VTG_itemCache]
];
tvClear _tree;
//indexes = [];

private _main = {
	params["_search"];

	private _nested = ["Accessories"];
	
	{
		private _name = _x#0;
		private _list = _x#1;

		private _index = [[], _name, "", ""] call _setArsenalItem;

		//indexes pushBack [_index]; ///DBUG
		//hint str _index;
		//sleep 2;
		if (_name in _nested) then {
			{
				private _subName = _x#0;
				private _subList = _x#1;

				private _subIndex = [[_index], _subName, "", ""] call _setArsenalItem;
				//indexes pushBack [_index, _subIndex]; ///DBUG
				//indexes pushBack _index; ///DBUG
				{
					[_search, [_index, _subIndex], _x] call _filter;
				} forEach _subList;
				[[_index, _subIndex]] call _checkIfEmpty;
			} forEach _list;
		}else{
			{
				[_search, [_index], _x] call _filter;
			} forEach _list;
			[[_index]] call _checkIfEmpty;
		};
	} forEach _data;
};

// private _arsenalItem = {
// 	params ['_name', '_list', '_tree', '_catPath', '_forIndex'];
// 	private _treeCatIndex = _forIndex;
// 	private _index = _tree tvAdd [_catPath, _name];
// 	_tree tvSetValue [(_catPath + [_index]), _forIndex];
// 	if (_search isEqualTo '') then {
// 		_tree tvCollapse (_catPath + [_treeCatIndex]);
// 	} else {
// 		_tree tvExpand (_catPath + [_treeCatIndex]);
// 	};
// 	private _itemIndex = 0;
// 	{
// 		_x params ['_itemName', '_itemClassname', '_itemPicture'];
// 		private _filter = if (_search isEqualTo '') then {
// 			false
// 		} else {
// 			((toLower _itemClassname) find (toLower _search)) isEqualTo -1 && ((toLower _itemName) find (toLower _search)) isEqualTo -1
// 		};
// 		if (!_filter) then {
// 			private _path = _catPath + [_treeCatIndex, _itemIndex];
// 			_tree tvAdd [_catPath + [_treeCatIndex], _itemName];
// 			_tree tvSetData [_path, _itemClassname];
// 			_tree tvSetPicture [_path, _itemPicture];
// 			_tree tvSetTooltip [_path, _itemClassname];
// 			_itemIndex = _itemIndex + 1;
// 		};
// 	} forEach _list;
// 	if (_itemIndex isEqualTo 0) then {
// 		_tree tvAdd [_catPath + [_treeCatIndex], 'Nothing found'];
// 		_tree tvSetData [_catPath + [_treeCatIndex, _itemIndex], ''];
// 		_tree tvSetTooltip [_catPath + [_treeCatIndex, _itemIndex], 'Nothing found'];
// 	};
// };

private _filter = {
	params["_search", "_path", "_data"];

	if (((toLower _search) in (toLower (_data#0)))||(_search == '')) then {
		[_path, _data#0, _data#1, _data#2] call _setArsenalItem;
	};
};

private _setArsenalItem = {
	params["_path", "_itemName", "_itemClassname", "_itemPicture"];

	private _index = _tree tvAdd [_path, _itemName];

	_path pushBack _index;

	// hint str [_tree, _path, _itemName];
	// sleep 2;
	_tree tvSetData [_path, _itemClassname];
	_tree tvSetPicture [_path, _itemPicture];
	_tree tvSetTooltip [_path, _itemClassname];
	_index;
	//sleep 5;
};

private _checkIfEmpty = {
	params["_path"];

	private _tree = VTG_equipUI#0;
	if ((_tree tvCount _path) == 0) then {
		_tree tvAdd [_path, "Nothing found"];
	};
};

_search call _main;

if (_search != '') then {
	tvExpandAll _tree;
};

//hint str indexes;

//_tree tvSortByValue [[], true];