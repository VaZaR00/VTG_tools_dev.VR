private _text = "";

if (EMM_check_load) then {
	{
		private _class = _x;
		if ("comp$$" in _class) then {
			_class = format["Module %1", str ((_class splitString "$$")#1)];
		};
		_text = _text + _class + endl;
	} forEach EMM_EQUIP_TEST_FAILED_ARR;
}else{
	{
		private _amount = str (_x#0);
		private _moduleName = _x#1;
		private _unitClass = typeOf (_x#2);
		private _unitName = [_unitClass] call EMM_fnc_getClassDisplayName;
		private _itemClass = _x#3;
		private _itemName = [_itemClass]  call EMM_fnc_getClassDisplayName;

		private _line = format["%1  -  %2 [%3]  -  %6 x %4 [%5]%7", _moduleName, _unitName, _unitClass, _itemName, _itemClass, _amount, endl];
		_text = _text + _line;
	} forEach EMM_EQUIP_TEST_FAILED_ARR;
};

copyToClipboard _text;

