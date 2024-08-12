if (EMM_var_BLOCK_BROWSER_OPERATIONS) exitWith {["Operation cannot be performed while Search active!", 1] call EMM_fnc_message};

params["_el"];

private _tree = EMM_equipUI#5;
private _path = tvCurSel _tree;

private _type = "";
private _image = "";

switch (_el) do {
	case "Folder": {
		_type = "%EMM_FOLDER%";
		_image = EMM_var_pic_FOLDER;
	};
	case "Module": {
		_type = "%EMM_MODULE%";
		_image = EMM_var_pic_MODULE;
	};
};

if ((_tree tvData _path) == "%EMM_MODULE%") then {
	_path deleteAt (count _path - 1);
};

_tree tvSetCurSel _path;

if (_el == "Module") then {
	call EMM_fnc_resetModule;
};

[_el] call EMM_fnc_openRenameMenu;

private _menuClosed = ((findDisplay 11549) isEqualTo displayNull) || ((findDisplay 15550) isEqualTo displayNull);

waitUntil { !(isNil "EMM_ENTERED_NAME") || _menuClosed };

if (_menuClosed) exitWith {};

[EMM_ENTERED_NAME] call EMM_fnc_setModulesTreeSize;

private _name = EMM_ENTERED_NAME;
EMM_ENTERED_NAME = nil;

if (_name isEqualTo false) exitWith {};

private _path = [[_name, _name, _image, _type, 0], _tree, _path] call EMM_fnc_addItem;

if (_el == "Module") then {
	EMM_Current_Module = _name;
};

call EMM_fnc_updateBrowser;