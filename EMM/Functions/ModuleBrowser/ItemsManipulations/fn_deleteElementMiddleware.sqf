#include "..\..\..\defines.hpp";

if (EMM_var_BLOCK_BROWSER_OPERATIONS) exitWith {["Operation cannot be performed while Search active!", 1] call EMM_fnc_message};

private _tree = EMM_equipUI#5;
params[["_path", tvCurSel _tree]];
private _type = _tree tvData _path;

if (_path isEqualTo []) exitWith {
	["Nothing selected!", 1] call EMM_fnc_message;
};

private _text = "";
private _title = "";
EMM_delete_secondFunc = {};

switch (_type) do {
	case "%EMM_FOLDER%": {
		_text = "Are you sure you want to delete the folder? It will delete all modules in it!";
	    _title = "Delete folder";
		EMM_var_temp_folder_path = +_path;
		EMM_delete_secondFunc = {
			PR(_folderItems) = [EMM_var_temp_folder_path] call EMM_fnc_getFolders;
			_folderItems apply {if ((_x#1) == "%EMM_MODULE%") then {[_x#2] call EMM_fnc_deleteModule}};
			EMM_var_temp_folder_path = nil;
		};
	};
	case "%EMM_MODULE%": {
		_text = "Are you sure you want to delete the Module?";
	    _title = "Delete module";
		EMM_var_TEMP_MODULE_TO_DELETE = _tree tvText _path;
		EMM_delete_secondFunc = {[EMM_var_TEMP_MODULE_TO_DELETE] call EMM_fnc_deleteModule; EMM_var_TEMP_MODULE_TO_DELETE = nil;};
	};
};

[
	_text,
	_title,
	[
		"Yes",
		{call EMM_fnc_deleteElement; call EMM_delete_secondFunc; call EMM_fnc_updateBrowser; } // call EMM_delete_secondFunc; EMM_delete_secondFunc = nil;}
	],
	[
		"No",
		{}
	],
	"a3\ui_f\data\map\markers\military\warning_ca.paa",
	findDisplay 11549
] call BIS_fnc_3DENShowMessage;