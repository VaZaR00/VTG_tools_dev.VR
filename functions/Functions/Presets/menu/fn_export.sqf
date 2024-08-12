params[["_one", false]];

private _name = "";

private _nested = [];
private _folders = [] call EMM_fnc_getFolders;

if (
	if (_one) then {
		private _tree = EMM_equipUI#5;
		private _sel = tvCurSel _tree;
		private _type = _tree tvData _sel;

		if (_sel isEqualTo []) exitWith {
			["Nothing selected", 1] call EMM_fnc_message;
			true    //not founded
		};

		if (_type == "%EMM_MODULE%") exitWith {
			_name = _tree tvtext _sel;
			false	//founded
		};
		if (_type == "%EMM_FOLDER%") exitWith {
			if ((_tree tvCount _sel) == 0) exitWith {
				["Folder is empty", 1] call EMM_fnc_message;
				true    //not founded
			};
			private _treeMap = [_tree] call EMM_fnc_treeMapper;
			_nested = _treeMap select {
				private _path = +(_x#0);
				_path resize (count _sel);
				_path isEqualTo _sel;
			};
			_folders = _folders select { private _name_ = (_x#2); (_nested findIf { _name_ == (_x#2) }) != -1 };
			_folders = _folders apply { (_x#0) deleteAt (count (_x#0) - 1); _x };
			false
		};
	} else {false}
) exitWith {};


private _storage = [_name] call EMM_fnc_getModules;

if ((_storage isEqualTo createHashMap) ||
	(_storage isEqualTo [])
) exitWith {
	["No data", 1] call EMM_fnc_message;	
};

_storage = _storage toArray false;

if !(_nested isEqualTo []) then {
	_storage = _storage select { private _name_ = (_x#0); (_folders findIf { _name_ == (_x#2) }) != -1; };
};

if (_name != "") then {
	private _data = +_storage;
	_storage = [];
	_storage insert [0, [_name, _data]];
	_folders = [];
};

copyToClipboard str ["EMM_EXPORT", _folders, _storage];
// copyToClipboard str [_storage isEqualType createHashMap, _nested, _storage];

["Data copied to clipboard"] call EMM_fnc_message;

[_folders, _storage]