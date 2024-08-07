params[["_one", false]];

private _name = "";

private _nested = [];

if (
	if (_one) then {
		private _tree = EMM_equipUI#5;
		private _sel = tvCurSel _tree;
		private _type = _tree tvData _sel;

		[str [_tree, _sel, _type, _sel isEqualTo []]] call EMM_fnc_message;

		if (_sel isEqualTo []) exitWith {
			["Nothing selected", 1] call EMM_fnc_message;
			true    //not founded
		};

		if (_type == "%EMM_MODULE%") exitWith {
			_name = _tree tvtext _sel;
			false	//founded
		};
		if (_type == "%EMM_FOLDER%") exitWith {
			if (_tree tvCount _sel) exitWith {
				["Folder is empty", 1] call EMM_fnc_message;
				true    //not founded
			};
			private _treeMap = [_tree] call EMM_fnc_treeMapper;
			_nested = _treeMap select {
				((_x#0) resize (count _sel)) isEqualTo _sel;
			};
			false
		};
	} else {false}
) exitWith {};


private _storage = [false, false, _name] call EMM_fnc_getModulesStorage;

if ((_storage isEqualTo createHashMap) ||
	(_storage isEqualTo [])
) exitWith {
	["No data", 1] call EMM_fnc_message;	
};

if !(_nested isEqualTo []) then {
	_storage = _storage select { private _name = (_x#0); (_nested findIf { _name == (_x#2) }) != -1; };
};

private _folders = call EMM_fnc_getFoldersStorage;

if (_name != "") then {
	private _data = +_storage;
	_storage = createHashMap;
	_storage insert [[_name, _data]];
	_folders = [];
};

_storage insert [["EMM_EXPORT", false]];

copyToClipboard str [_folders, _storage];

["Data copied to clipboard"] call EMM_fnc_message;

[_folders, _storage]