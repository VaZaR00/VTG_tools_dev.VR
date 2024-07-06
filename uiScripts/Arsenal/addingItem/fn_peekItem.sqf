params["_path", "_classname", "_func"];
_inventoryTree = VTG_equipUI#1;

private _name = _arsenal tvText _sel;  //text of selection (item name)
private _notFound = true;
private _categItemCount = _inventoryTree tvCount _path;
private _amount = call VTG_fnc_getAmountInput; //get amount number from input field

//try to detect if such item is in module already
if (_categItemCount > 0) then {
	for "_i" from 0 to (_categItemCount) do {
		private _data = _inventoryTree tvTooltip [_path#0, _path#1, _i];  //there is classname in elements tooltip 
		if (_classname == _data) then { //if it is then modify item amount
			[[_path#0, _path#1, _i], _amount] call VTG_fnc_modifyModuleItem;
			_notFound = false; //add item function won't be called
			break;
		};
	};
};
if (_notFound) then { //if not detected then add new
	[_path, _classname, _name, _amount, _func] call VTG_fnc_addItemToModule;
};