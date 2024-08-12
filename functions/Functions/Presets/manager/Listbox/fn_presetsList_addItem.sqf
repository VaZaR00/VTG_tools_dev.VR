params[['_save', false]];

private _date = systemTimeUTC joinString "-";
private _text = "New_preset_" + _date;

EMM_PM_listBox lnbAddRow [_text];

["Preset"] call EMM_fnc_presetsList_renameItem;

private _menuClosed = ((findDisplay 12337) isEqualTo displayNull) || ((findDisplay 15550) isEqualTo displayNull);

waitUntil { !(isNil "EMM_ENTERED_NAME") || _menuClosed };

if (_menuClosed) exitWith {};

private _name = EMM_ENTERED_NAME;
EMM_ENTERED_NAME = nil;

EMM_PM_listBox lnbSort [0];

private _folders = [];
private _modules = [];

if (_save) then {
	if (EMM_var_MISSION_PRESET_mis != "") exitWith {
		["Your current preset is already exists and saved"] call EMM_fnc_message;
	};
	_folders = [] call EMM_fnc_getFolders;
	_modules = [] call EMM_fnc_getModules;
	call EMM_fnc_wipePreset;
	EMM_var_MISSION_PRESET_mis = _name;
	EMM_RESTART_WHEN_PM_CLOSED = true;
};

private _newPreset = [[_name, [_folders, _modules]]];
[_newPreset] call EMM_fnc_addPreset;