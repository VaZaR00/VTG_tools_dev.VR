params[["_new", true], ["_sel", lnbCurSelRow EMM_PM_listBox], ["_add", false]];

EMM_var_temp_RENAME_DONE = false;

private _prevName = EMM_PM_listBox lnbText [_sel, 0];

if (_new && {_sel < 0}) exitWith {
	["Nothing selected!", 1] call EMM_fnc_message;
};

["Preset", _prevName, nil, EMM_var_disp_PRESET_MANAGER] call EMM_fnc_openRenameMenu;

waitUntil {!((findDisplay 15550) isEqualTo displayNull)};

private _menuClosed = (EMM_var_disp_PRESET_MANAGER isEqualTo displayNull) || ((findDisplay 15550) isEqualTo displayNull);

waitUntil { !(isNil "EMM_var_temp_ENTERED_NAME") || _menuClosed || (isNil "EMM_var_temp_rename_open") };

if (_menuClosed) exitWith {};

if (isNil "EMM_var_temp_ENTERED_NAME") exitWith {};

private _name = EMM_var_temp_ENTERED_NAME;
EMM_var_temp_ENTERED_NAME = nil;

if (_name isEqualTo false) exitWith {};
if (!_add && (_name == _prevName)) exitWith {};

EMM_PM_listBox lnbSetText [[_sel, 0], _name];
EMM_PM_listBox lnbSetTooltip [[_sel, 0], _name];

EMM_PM_listBox lnbSort [0];

private _folders = [];
private _modules = [];

if (!_add) then {
	_folders = [0, _prevName] call EMM_fnc_getPresetData;
	_modules = [1, _prevName] call EMM_fnc_getPresetData;
	[_prevName] call EMM_fnc_deletePreset;
	[_name] call EMM_fnc_setPreset;
};
if (_add && {EMM_var_MISSION_PRESET_mis == ""}) then {
	_folders = [] call EMM_fnc_getFolders;
	_modules = [] call EMM_fnc_getModules;
	call EMM_fnc_wipePreset;
	[_name] call EMM_fnc_setPreset;
};

private _newPreset = [[_name, [_folders, _modules]]];
[_newPreset] call EMM_fnc_addPreset;

EMM_var_temp_RENAME_DONE = true;