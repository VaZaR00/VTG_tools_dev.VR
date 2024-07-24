params[["_failed", EMM_EQUIP_TEST_FAILED_ARR]];

EMM_check_load = false;

if (count _failed == 0) exitWith {
	["Equipment gived successfuly!"] call EMM_fnc_message;
};

["Some items couldn't be added"] call EMM_fnc_message;

private _header = text "Module - unit - item";
_header setAttributes ["size", "1", "font", "EtelkaMonospacePro"];
private _compose = [_header, lineBreak, lineBreak];
{
	private _amount = str (_x#0);
	private _moduleName = _x#1;
	private _unit = if ((_x#2) isEqualType "") then {
		(_x#2)
	} else {
		[typeOf (_x#2)] call EMM_fnc_getClassDisplayName;
	};
	private _item = [_x#3]  call EMM_fnc_getClassDisplayName;

	_compose append [_moduleName, "  -  ", _unit, "  -  ", _amount, " x ", _item, lineBreak];
} forEach _failed;

private _display = (findDisplay 11549) createDisplay "EMM_failedItemsReport";
private _textAreaCtrl = _display displayCtrl 1500;

_textAreaCtrl ctrlSetStructuredText (composeText _compose);