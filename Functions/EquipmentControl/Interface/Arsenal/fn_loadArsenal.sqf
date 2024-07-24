disableSerialization;

if (isNil "EMM_equipUI") exitWith {};

private _terminateHandle = [] spawn {
	if (isNil "EMM_ARSENAL_LOADING_HANDLE") exitwith {};
	terminate EMM_ARSENAL_LOADING_HANDLE
};

waitUntil{scriptDone _terminateHandle};

EMM_ARSENAL_LOADING_HANDLE = _thisScript;

(EMM_equipUI#17) ctrlShow true; //show loading

params [
	['_search', '', ['']],
	['_tree', EMM_equipUI#0],
	['_data', parsingNamespace getVariable "EMM_itemCache"],
	['_composites', true]
];
tvClear _tree;

if (_composites) then {
	_data = [+_data] call EMM_fnc_setCompositeModule;
};
//indexes = [];

private _main = {
	params["_search"];

	private _nested = ["Accessories", "Items"];
	
	{
		if (isNil "EMM_equipUI") exitWith {};

		private _name = _x#0;
		private _list = _x#1;

		private _index = [[], _name, "", ""] call _setArsenalItem;

		//indexes pushBack [_index]; ///DBUG
		//sleep 2;
		if (_name in _nested) then {
			{
				if (isNil "EMM_equipUI") exitWith {};

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
				if (isNil "EMM_equipUI") exitWith {};
				[_search, [_index], _x] call _filter;
			} forEach _list;
			[[_index]] call _checkIfEmpty;
		};
	} forEach _data;
};

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
	_tree tvSetValue [_path, ([_itemName] call EMM_fnc_categorySortIndex)];

	_index;
	//sleep 5;
};

private _checkIfEmpty = {
	params["_path"];

	if (isNil "EMM_equipUI") exitWith {};

	private _tree = EMM_equipUI#0;
	if ((_tree tvCount _path) == 0) then {
		_tree tvAdd [_path, "Nothing found"];
	};
};

_search call _main;

if (isNil "EMM_equipUI") exitWith {};

(EMM_equipUI#17) ctrlShow false; //hide loading

if (_search != '') then {
	tvExpandAll _tree;
};

//hint str indexes;

_tree tvSortByValue [[], true];

EMM_ARSENAL_LOADING_HANDLE = nil;