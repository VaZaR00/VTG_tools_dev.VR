private _sel = lnbCurSelRow EMM_PM_listBox;
private _name = EMM_PM_listBox lnbText [_sel, 0];

if (_name isEqualTo "") exitWith {
	["Nothing selected!", 1] call EMM_fnc_message;
};

call EMM_fnc_wipePreset;

[_name] call EMM_fnc_setPreset;

["Preset loaded"] call EMM_fnc_message;