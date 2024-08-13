private _sel = lnbCurSelRow EMM_PM_listBox;
private _name = EMM_PM_listBox lnbText [_sel, 0];

if (_name isEqualTo "") exitWith {
	["Nothing selected!", 1] call EMM_fnc_message;
};

EMM_PM_listBox lnbDeleteRow _sel;

[_name] call EMM_fnc_deletePreset;