private _tree = EMM_equipUI#5;
private _path = tvCurSel _tree;

if (_path isEqualTo []) exitWith {
	["Nothing selected!", 1] call EMM_fnc_message;
};

private _prevName = _tree tvText _path;
[nil, _prevName] call EMM_fnc_openRenameMenu;

private _menuClosed = ((findDisplay 11549) isEqualTo displayNull) || ((findDisplay 15550) isEqualTo displayNull);

waitUntil { !(isNil "EMM_ENTERED_NAME") || _menuClosed };

if (_menuClosed) exitWith {};

private _name = EMM_ENTERED_NAME;
EMM_ENTERED_NAME = nil;

if (_name isEqualTo false) exitWith {};
if (_name == _prevName) exitWith {};

_tree tvSetText [_path, _name];
_tree tvSetTooltip [_path, _name];

[] call {
	[_name] call EMM_fnc_setModulesTreeSize;

	if (EMM_Current_Module != "none") then {
		EMM_Current_Module = _name;
		call EMM_fnc_saveModule;
		call EMM_fnc_loadModuleData;
	};

	[] call EMM_fnc_sortItems;
};