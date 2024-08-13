params[["_new", true], ["_sel", lnbCurSelRow EMM_PM_listBox]];

private _prevName = EMM_PM_listBox lnbText [_sel, 0];

if (_new && {_sel < 0}) exitWith {
	["Nothing selected!", 1] call EMM_fnc_message;
};

["Preset", _prevName, EMM_var_disp_PRESET_MANAGER] call EMM_fnc_openRenameMenu;

waitUntil {!((findDisplay 15550) isEqualTo displayNull)};

private _menuClosed = (EMM_var_disp_PRESET_MANAGER isEqualTo displayNull) || ((findDisplay 15550) isEqualTo displayNull);

waitUntil { !(isNil "EMM_ENTERED_NAME") || _menuClosed };

if (_menuClosed) exitWith {};

private _name = EMM_ENTERED_NAME;
EMM_ENTERED_NAME = nil;

if (_name isEqualTo false) exitWith {};
if (_name == _prevName) exitWith {};

EMM_PM_listBox lnbSetText [[_sel, 0], _name];
EMM_PM_listBox lnbSetTooltip [[_sel, 0], _name];

