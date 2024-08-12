params["_tree"];

private _nestingCategories = EMM_var_Nesting_Categories;

private _treeMap = [_tree] call EMM_fnc_treeMapper;

private _removeRandom = {
	params["_text"];
	private _randPos = _text find " (Random)";
	private _editedTxT = if (_randPos != -1) 
	then {
		_text select [0, _randPos];
	}else{ _text };
	_tree tvSetText [_path, _editedTxT];
};

{
	private _path = _x#0;
	private _data = _x#1;
	private _text = _x#2;
	private _amount = _x#3;
	private _tooltip = _x#4;
	private _count = _tree tvCount _path;
	
	if ((EMM_var_Inv_Tree_Categories findIf {_x in _data}) != -1) then {
		private _isRand = true;
		if ("@@" in _data) then {
			private _dataArr = _data splitString "@@";
			_isRand = call compile (_dataArr#1);
			_data = _dataArr#0;
		};

		if (!_isRand) then {
			_text call _removeRandom;
			continue
		} else {
			if (_count > 1) then {
				if (" (Random)" in _text) then {continue};
				_tree tvSetText [_path, format["%1 (Random)", _text]];
			};
			continue
		};
		// if (
		// 	(_tree != (EMM_moduleTabs#0#0)) &&
		// 	(_data != EMM_var_Inv_Tree_Categories#1)
		// ) then {continue};
		
		// private _tempPath = +_path;
		// _tempPath pushBack 0;
		// private _class = _tree tvTooltip _tempPath;
		// if ((_data == EMM_var_Inv_Tree_Categories#1) &&
		// 	(((_class call BIS_fnc_itemType)#0) == "Magazine")
		// ) then {continue};

		// if (count _tempPath > 3) then {
		// 	_tempPath resize (count _tempPath - 3);
		// 	private _parentName = _tree tvText _tempPath;
		// 	private _category = _nestingCategories findIf {_x in (toLower _parentName)};
		// 	if (_category != -1) then { continue };
		// };

		//  else {
			
		// };
		// continue;
	};

	if ([_tooltip] call EMM_fnc_isWeapon) then {
		if (_count > 0) then {
			if (" (+ Attachments)" in _text) then {continue};
			_tree tvSetText [_path, format["%1 (+ Attachments)", _text]];
		} else {
			_text call _removeRandom;
		};
	};
} forEach _treeMap;