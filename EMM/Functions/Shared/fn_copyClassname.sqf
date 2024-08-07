params["_control", "_key", "_ctrl", "_type"];

if (!_ctrl) exitWith {};
if !(_key isEqualTo DIK_C) exitWith {};

private _class = switch (_type) do {
	case 0: {_control lnbData [(lnbCurSelRow _control), 0]};
	case 1: {_control tvTooltip (tvCurSel _control);};
};

copyToClipboard _class;

["Classname copied to clipboard"] call EMM_fnc_message;