private _ctrl = EMM_equipUI#5;
private _search = ctrlText (EMM_equipUI#18);

tvClear _ctrl;

//reset tree width
private _ctrlSize = ctrlPosition _ctrl;
_ctrlSize set [2, (57*0.005)];
_ctrl ctrlSetPosition _ctrlSize;
_ctrl ctrlCommit 0;


private _main = {
	private _modules = [false, true, true] call EMM_fnc_getModulesStorage;

	if (count _modules == 0) exitWith {};

	{
		private _name = _x;
		private _type = _y#0#0;
		private _folders = if ((count _y) > 1) then {_y#1} else {[]};

		private _path = [_type, _folders, []] call _iterate;

		_ctrl tvAdd [_path, _name];
	}forEach _modules;
};

private _iterate = {
	params["_type", "_folders", "_path"];

	private _count = _tree tvCount _path;

	if ((_categCount == 0) && _new) then {
		call _addNew; //if module is empty
	}else{
		private _notFound = true;

		for "_i" from 0 to (_categCount) do { //if not empty then iterate through its categories
			private _iText = nil;
			if (_byData) then {
				_iText = _tree tvData (_path + [_i]);
			}else{
				_iText = _tree tvText (_path + [_i]);
			};

			if (_text in _iText) then { //if its target category then call function to peek item
				_path pushBack _i;
				_notFound = false;
				break;
			};
		};

		if (_notFound && _new) then {
			call _addNew;
		};
	};
};

// private _main = {
// 	private _modules = [false, true, true] call EMM_fnc_getModulesStorage;
	
// 	if (count _modules == 0) exitWith {};
// 	private _arr = _modules toArray false;
// 	private _treeMap = [_arr] call _arrayToHashMap;
// 	{
// 		private _type = _x;
// 		private _typeName = [_type] call EMM_fnc_getTargetOptionName;
// 		[_typeName, _type] call EMM_fnc_addItemToTree;
// 		private _index = _forEachIndex;
// 		{
// 			if ((_search != "") && !(_search in _x)) then {continue};
// 			[_x, _type, [_index] ] call EMM_fnc_addItemToTree;
// 		}forEach _y;

// 		if ((_ctrl tvCount [_forEachIndex]) == 0) then {
// 			_ctrl tvDelete [_forEachIndex];
// 		};

// 		_ctrl tvSort [[_forEachIndex]];
// 	}forEach _treeMap;
// };

// private _arrayToHashMap = {
// 	private _list = param[0];

// 	private _hashMap = createHashMap;
// 	{
// 		//was: key(name) - value(type)
// 		private _value = _x select 0; //key is now value (name)
// 		private _key = if (count ((_x#1)#0) > 1) then {
// 			"edit"
// 		} else { ((_x#1)#0)#0 };
// 		//value is now key (type)
// 		//now: value(type) - key(name)

// 		if ((_hashMap getOrDefault [_key, false]) isEqualTo false) then {
// 			_hashMap set [_key, [_value]];
// 		} else {
// 			private _existingValues = _hashMap get _key;
// 			_existingValues pushBack _value;
// 			_hashMap set [_key, _existingValues];
// 		};
// 	} forEach _list;
// 	_hashMap;
// };

call _main;

tvExpandAll _ctrl;
_ctrl tvSetCurSel EMM_Current_module_path;