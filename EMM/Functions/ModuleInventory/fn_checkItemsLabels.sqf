params["_tree"];

private _nestingCategories = ["unif", "vest", "backpack"];

private _treeMap = [_tree] call EMM_fnc_treeMapper;

{
	private _path = _x#0;
	private _data = _x#1;
	private _text = _x#2;
	private _amount = _x#3;
	private _tooltip = _x#4;
	private _count = _tree tvCount _path;
	
	if (_data in ["%EMM_CATEGORY%", "%EMM_ATTACHMENT_CATEGORY%"]) then {
		if (
			(_tree != (EMM_moduleTabs#0#0)) &&
			(_data != "%EMM_ATTACHMENT_CATEGORY%")
		) then {continue};
		
		private _tempPath = +_path;
		_tempPath pushBack 0;
		private _class = _tree tvTooltip _tempPath;
		if ((_data == "%EMM_ATTACHMENT_CATEGORY%") &&
			(((_class call BIS_fnc_itemType)#0) == "Magazine")
		) then {continue};

		if (count _tempPath > 3) then {
			_tempPath resize (count _tempPath - 3);
			private _parentName = _tree tvText _tempPath;
			private _category = _nestingCategories findIf {_x in (toLower _parentName)};
			if (_category != -1) then { continue };
		};

		if (_count > 1) then {
			if (" (Random)" in _text) then {continue};
			_tree tvSetText [_path, format["%1 (Random)", _text]];
		} else {
			private _randPos = _text find " (Random)";
			private _editedTxT = if (_randPos != -1) 
			then {
				_text select [0, _randPos];
			}else{ _text };
			_tree tvSetText [_path, _editedTxT];
		};
		continue;
	};

	if ([_tooltip] call EMM_fnc_isWeapon) then {
		if (_count > 0) then {
			if (" (+ Attachments)" in _text) then {continue};
			_tree tvSetText [_path, format["%1 (+ Attachments)", _text]];
		} else {
			private _name = _tooltip call EMM_fnc_getClassDisplayName;
			if (_amount > 1) then {
				_name = format["%1 x %2", _amount, _name];
				_itemData set [0, _name];
			};
			_tree tvSetText [_path, _name];
		};
	};
} forEach _treeMap;