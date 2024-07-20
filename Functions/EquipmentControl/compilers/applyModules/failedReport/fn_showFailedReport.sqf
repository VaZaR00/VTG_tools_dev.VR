params[["_failed", EMM_EQUIP_TEST_FAILED_ARR]];

if (count EMM_EQUIP_TEST_FAILED_ARR == 0) exitWith {
	//["Equipment gived successfuly!"] call EMM_fnc_message;
};

private _header = text "Module - unit - item";
_header setAttributes ["size", "1", "font", "EtelkaMonospacePro"];
private _compose = [_header, lineBreak, lineBreak];

{
	private _moduleName = _x#0;
	private _unit = [typeOf (_x#1)] call EMM_fnc_getClassDisplayName;
	private _item = [_x#2]  call EMM_fnc_getClassDisplayName;

	_compose append [_moduleName, "  -  ", _unit, "  -  ", _item, lineBreak];
} forEach _failed;

private _display = (findDisplay 11549) createDisplay "failedReport";
private _textAreaCtrl = _display displayCtrl 1500;

_textAreaCtrl ctrlSetStructuredText (composeText _compose);