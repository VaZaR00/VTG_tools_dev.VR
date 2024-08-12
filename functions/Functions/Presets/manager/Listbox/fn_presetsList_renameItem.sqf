params[["_sel", lnbCurSelRow EMM_PM_listBox]];

if (_sel isEqualTo []) exitWith {
	["Nothing selected!", 1] call EMM_fnc_message;
};

private _prevName = EMM_PM_listBox lnbText [_sel, 0];
[nil, _prevName] call EMM_fnc_openRenameMenu;

private _menuClosed = ((findDisplay 12337) isEqualTo displayNull) || ((findDisplay 15550) isEqualTo displayNull);

waitUntil { !(isNil "EMM_ENTERED_NAME") || _menuClosed };

if (_menuClosed) exitWith {};

private _name = EMM_ENTERED_NAME;
EMM_ENTERED_NAME = nil;

if (_name isEqualTo false) exitWith {};
if (_name == _prevName) exitWith {};

EMM_PM_listBox lnbSetText [[_sel, 0], _name];
EMM_PM_listBox lnbSetTooltip [[_sel, 0], _name];

