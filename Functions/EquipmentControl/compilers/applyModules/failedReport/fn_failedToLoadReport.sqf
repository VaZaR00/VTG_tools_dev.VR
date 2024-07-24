if (count EMM_EQUIP_TEST_FAILED_ARR == 0) exitWith {EMM_EQUIP_TEST_FAILED_ARR=nil};

EMM_check_load = true;

["Some items couldn't be added"] call EMM_fnc_message;

private _header = text "List of classes that couldn't be loaded";
_header setAttributes ["size", "1", "font", "EtelkaMonospacePro"];
private _compose = [_header, lineBreak, lineBreak];
{
	private _class = _x;
	if ("comp$$" in _class) then {
		_class = format["Module %1", str ((_class splitString "$$")#1)];
	};
	_compose append [_class, lineBreak];
} forEach EMM_EQUIP_TEST_FAILED_ARR;

private _display = (findDisplay 11549) createDisplay "EMM_failedItemsReport";
private _textAreaCtrl = _display displayCtrl 1500;

_textAreaCtrl ctrlSetStructuredText (composeText _compose);