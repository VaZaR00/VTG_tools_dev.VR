private _text = "";

{
	private _moduleName = _x#0;
	private _unitClass = typeOf (_x#1);
	private _unitName = [_unitClass] call EMM_fnc_getClassDisplayName;
	private _itemClass = _x#2;
	private _itemName = [_itemClass]  call EMM_fnc_getClassDisplayName;

	private _line = format["%1  -  %2 [%3]  -  %4 [%5]%6", _moduleName, _unitName, _unitClass, _itemName, _itemClass, endl];
	_text = _text + _line;
} forEach EMM_EQUIP_TEST_FAILED_ARR;

copyToClipboard _text;