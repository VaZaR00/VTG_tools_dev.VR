params[["_one", false]];

private _data = [] call EMM_fnc_getPresetsStorage;

if (count _data == 0) exitWith {
	["No presets!", 1] call EMM_fnc_message;
};

if (_one) then {
	private _name = EMM_PM_listBox lnbText [lnbCurSelRow EMM_PM_listBox, 0];
	if (_name isEqualTo "") exitWith {
		["Nothing selected!", 1] call EMM_fnc_message;
	};
	_data = _data getOrDefault [_name, false];
	if (_data isEqualTo false) exitWith {
		["No preset data!", 1] call EMM_fnc_message;
	};
	_data = [[_name, _data]];
};

copyToClipboard str ["%EMM_EXPORT%", _data];
