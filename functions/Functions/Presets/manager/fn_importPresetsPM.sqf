private _importText = copyFromClipboard;

if !("EMM_EXPORT" in _importText) exitWith {
	["Invalid data!", 1] call EMM_fnc_message;
};

private _importData = call compile _import;
private _data = _importData#1;

[_data] call EMM_fnc_addPreset;

[] call EMM_fnc_loadPresetsList;