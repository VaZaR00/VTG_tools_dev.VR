#include "..\..\defines.hpp";

params[["_search", ""]];

private _treeMap = [] call EMM_fnc_getFolders;
private _tree = EMM_equipUI#5;

if (count _treeMap == 0) exitWith {};

tvClear _tree;
{
	private _path = _x#0;
	private _type = _x#1;
	private _name = _x#2;

	private _pic = BROWSER_TYPE_DATA(_type, 0);

	if (_search != "") then {
		if (_type == type_EMM_FOLDER) then {continue};
		if !([_search, _name, false] call BIS_fnc_inString) then {continue};
		_path = [];
	};

	[[_name, _name, _pic, _type, (_x#3)], _tree, _path] call EMM_fnc_addItem;
	//private _path = 
	// if (_search != "") then {
	// 	_tree tvSetColor [EMM_nested_currnetParentPath, [0.7,0.6,0.12,1]];
	// 	_tree tvSetSelectColor [EMM_nested_currnetParentPath, [0.7,0.6,0.12,1]];
	// };
} forEach _treeMap;

if (_search == "") then {
	[] call EMM_fnc_updateBrowser;
	EMM_var_BLOCK_BROWSER_OPERATIONS = false;
} else {
	EMM_var_BLOCK_BROWSER_OPERATIONS = true;
};