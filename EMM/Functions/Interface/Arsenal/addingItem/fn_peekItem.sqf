params["_path", "_classname", "_func", "_amount", "_name"];
_inventoryTree = EMM_equipUI#1;

private _notFound = true;
private _categItemCount = _inventoryTree tvCount _path;

//try to detect if such item is in module already
if (_categItemCount > 0) then {
	for "_i" from 0 to (_categItemCount) do {
		private _data = _inventoryTree tvTooltip (_path + [_i]);  //there is classname in elements tooltip 
		if (_classname == _data) then { //if it is then modify item amount
			_path pushBack _i;
			[_path, _amount] call EMM_fnc_modifyModuleItem;
			_notFound = false; //add item function won't be called
			break;
		};
	};
};
if (_notFound) then { //if not detected then add new
	[_path, _classname, _func, _amount, _name] call EMM_fnc_addItemToModule;
};