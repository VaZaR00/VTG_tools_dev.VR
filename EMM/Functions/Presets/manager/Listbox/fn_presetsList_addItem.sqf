params[['_save', false]];

private _date = systemTimeUTC joinString "-";
private _text = "New_preset_" + _date;

private _index = EMM_PM_listBox lnbAddRow [_text, ""];

EMM_PM_listBox lnbSetCurSelRow _index;

private _renameHandler = [false, nil, true] spawn EMM_fnc_presetsList_renameItem;

waitUntil {scriptDone _renameHandler};

if !(EMM_var_temp_RENAME_DONE) then {
	EMM_PM_listBox lnbDeleteRow _index;
};

EMM_var_temp_RENAME_DONE = false;