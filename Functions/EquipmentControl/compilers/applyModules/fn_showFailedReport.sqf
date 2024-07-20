params[["_failed", EMM_EQUIP_TEST_FAILED_ARR]];

private _display = (findDisplay 11549) createDisplay "failedReport";
private _textAreaCtrl = _display displayCtrl 1500;

private _textHeader = "<t size='3'>Module name - unit - item</t>";

{
	private _name = _x#0;
	private _unit = _x#1;
	private _item = _x#2;

	
} forEach _failed;
