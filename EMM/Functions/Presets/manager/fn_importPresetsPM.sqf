private _importText = copyFromClipboard;

if !("EMM_EXPORT" in _importText) exitWith {
	["Invalid data!", 1] call EMM_fnc_message;
};

private _importData = call compile _importText;
private _data = _importData#1;

EMM_var_temp_RENAME_EL_TYPE = "Preset";
_data apply {
	[_x, 0] call EMM_fnc_setCopyName;
};
EMM_var_temp_RENAME_EL_TYPE = nil;

[_data] call EMM_fnc_addPreset;

[] call EMM_fnc_loadPresetsList;