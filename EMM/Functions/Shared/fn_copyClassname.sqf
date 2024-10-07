#include "..\..\defines.hpp";

params["_control", "_key", "_ctrl", "_type"];

if (!_ctrl) exitWith {};
if !(_key in [46, 45]) exitWith {};

private _class = switch (_type) do {
	case 0: {_control lnbData [(lnbCurSelRow _control), 0]};
	case 1: {
		PR(_selection) = tvSelection _control;
		PR(_txt) = "";
		{
			_txt = _txt + '"' + str (_control tvTooltip _x) + '"' + ';';
		} forEach _selection;
		if (_key == 45) then {[] call EMM_f_DELETE_SELECTION};
		_txt
	};
};

copyToClipboard _class;

["Classname copied to clipboard"] call EMM_fnc_message;