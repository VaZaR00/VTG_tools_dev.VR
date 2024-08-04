params["_tree"];

private _treeMap = [_tree] call EMM_fnc_treeMapper;

{
	private _path = _x#0;
	private _data = _x#1;
	private _text = _x#2;
	private _tooltip = _x#4;
	private _count = _tree tvCount _path;
	
	if (_data in ["%EMM_CATEGORY%", "%EMM_ATTACHMENT_CATEGORY%"]) then {
		if (
			(_tree != (EMM_moduleTabs#0#0)) &&
			(_data != "%EMM_ATTACHMENT_CATEGORY%")
		) then {continue};
		
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
			_tree tvSetText [_path, _name];
		};
	};
} forEach _treeMap;