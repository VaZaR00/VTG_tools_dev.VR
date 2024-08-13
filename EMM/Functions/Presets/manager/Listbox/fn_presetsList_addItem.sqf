params[['_save', false]];

private _date = systemTimeUTC joinString "-";
private _text = "New_preset_" + _date;

private _index = EMM_PM_listBox lnbAddRow [_text, ""];

EMM_PM_listBox lnbSetCurSelRow _index;

private _renameHandler = [false] spawn EMM_fnc_presetsList_renameItem;

waitUntil {scriptDone _renameHandler};

private _name = EMM_PM_listBox lnbText [_index, 0];

EMM_PM_listBox lnbSort [0];

private _folders = [];
private _modules = [];

// private _exit = if (_save) then {
// 	[str [_name, EMM_var_MISSION_PRESET_mis]] call EMM_fnc_message;
if (EMM_var_MISSION_PRESET_mis == "") then {
	_folders = [] call EMM_fnc_getFolders;
	_modules = [] call EMM_fnc_getModules;
	call EMM_fnc_wipePreset;
	[_name] call EMM_fnc_setPreset;
};
// } else {
// 		//["Your current preset is already exists and saved"] call EMM_fnc_message;
// 		true;
// 	};
// } else {false};
// if (_exit) exitWith {};

private _newPreset = [[_name, [_folders, _modules]]];
[_newPreset] call EMM_fnc_addPreset;
//[str [6, _newPreset, keys ([] call EMM_fnc_getPresetsStorage)]] call EMM_fnc_message;