#include "..\..\..\defines.hpp";

if (EMM_var_BLOCK_BROWSER_OPERATIONS) exitWith {["Operation cannot be performed while Search active!", 1] call EMM_fnc_message};

params["_el"];

private _tree = EMM_equipUI#5;
private _path = tvCurSel _tree;

private _type = "";
private _image = "";
PR(_showType) = false;

switch (_el) do {
	case "Folder": {
		_type = type_EMM_FOLDER;
		_image = EMM_var_pic_FOLDER;
	};
	case "Module": {
		_type = type_EMM_MODULE;
		_image = EMM_var_pic_MODULE;
		_showType = true;
	};
};

if ((_tree tvData _path) in EMM_var_BROWSER_TYPES) then {
	_path deleteAt (count _path - 1);
};

_tree tvSetCurSel _path;

if (_el == "Module") then {
	call EMM_fnc_resetModule;
};

[_el, nil, _showType] call EMM_fnc_openRenameMenu;

private _menuClosed = (EMM_var_disp_MODULE_MANAGER isEqualTo displayNull) || ((findDisplay 15550) isEqualTo displayNull);

waitUntil { !(isNil "EMM_var_temp_ENTERED_NAME") || _menuClosed || (isNil "EMM_var_temp_rename_open") };

if (_menuClosed) exitWith {};

if (isNil "EMM_var_temp_ENTERED_NAME") exitWith {};

private _name = EMM_var_temp_ENTERED_NAME;
EMM_var_temp_ENTERED_NAME = nil;

if (_name isEqualTo false) exitWith {};

if (_showType) then {
	switch (EMM_var_temp_RENAME_ITEM_TYPE) do {
		case "Container": {
			_type = type_EMM_MODULE_CONT;
			_image = EMM_var_pic_MODULE_CONT;
		};
		default {};
	};
};
EMM_var_temp_RENAME_ITEM_TYPE = nil;

[_name] call EMM_fnc_setModulesTreeSize;

private _path = [[_name, _name, _image, _type, 0], _tree, _path] call EMM_fnc_addItem;

if (_el == "Module") then {
	EMM_Current_Module = _name;
	EMM_Current_Module_type = BROWSER_TYPE_DATA(_type, 2);
};

call EMM_fnc_updateBrowser;