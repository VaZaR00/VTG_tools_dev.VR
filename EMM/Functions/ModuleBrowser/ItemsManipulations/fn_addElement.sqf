params["_el"];

private _tree = EMM_equipUI#5;
private _path = tvCurSel _tree;

private _type = "";
private _image = "";

switch (_el) do {
	case "Folder": {
		_type = "%EMM_FOLDER%";
		_image = "a3\3den\data\cfg3den\layer\icon_ca.paa";
	};
	case "Module": {
		_type = "%EMM_MODULE%";
		_image = "a3\3den\data\cfg3den\history\changeattributes_ca.paa";
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

private _name = EMM_ENTERED_NAME;
EMM_ENTERED_NAME = nil;

if (_name isEqualTo false) exitWith {};

private _path = [[_name, _name, _image, _type, 0], _tree, _path] call EMM_fnc_addItem;

[_name] call EMM_fnc_setModulesTreeSize;

if (_el == "Module") then {
	[_tree, _path] call EMM_fnc_openModule;
	call EMM_fnc_saveModule;
};

[] call EMM_fnc_sortItems;
