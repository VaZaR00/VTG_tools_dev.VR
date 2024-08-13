params[["_failed", EMM_EQUIP_TEST_FAILED_ARR]];

EMM_check_load = false;

if (count _failed == 0) exitWith {
	EMM_EQUIP_TEST_FAILED_ARR = nil;
	["Equipment gived successfuly!"] call EMM_fnc_message;
};

["Some items couldn't be added", 1] call EMM_fnc_message;

private _header = text "Module - unit - item";
_header setAttributes ["size", "1", "font", "EtelkaMonospacePro"];

private _compose = [_header, lineBreak, lineBreak];
//private _text = "";
{
	private _amount = text (str (_x#0));
	private _moduleName = text (_x#1);
	private _unitClass = typeOf (_x#2);
	private _unit = text ([_unitClass] call EMM_fnc_getClassDisplayName);

	_unitClass = text (format[" [%1]", _unitClass]);
	private _item = text ([_x#3] call EMM_fnc_getClassDisplayName);

	private _line = format["%1  |  %2  |  %3 x %4%5", _moduleName, _unit, _amount, _item, endl];
	private _width = _line getTextWidth ["PuristaBold", 8 * 0.02];
	if (_width > ((ctrlPosition _textAreaCtrl)#2)) then {
		_textAreaCtrl ctrlSetPosition [0, 0, _width, count _failed * 1.5];
	};

	_unitClass setAttributes ["color", "#3269cf"];
	_unit setAttributes ["color", "#babbbf"];
	_moduleName setAttributes ["color", "#29cf5e"];
	_item setAttributes ["color", "#e0b73a"];
	_amount setAttributes ["color", "#bd3333"];

	//_text = _text + _line;
	_compose append [_moduleName, "  |  ", _unit, _unitClass, "  |  ", _amount, " x ", _item, lineBreak, lineBreak];
} forEach _failed;

private _display = EMM_var_disp_MODULE_MANAGER createDisplay "EMM_failedItemsReport";
private _textAreaCtrl = _display displayCtrl 1500;

private _composedText = composeText _compose;

_textAreaCtrl ctrlSetStructuredText _composedText;
//_textAreaCtrl ctrlSetText _text; 

