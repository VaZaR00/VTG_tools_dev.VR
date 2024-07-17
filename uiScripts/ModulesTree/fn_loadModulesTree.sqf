tvClear (VTG_equipUI#5);

private _main = {
	private _nameAndType = [false, true] call VTG_fnc_getModulesStorage;
	
	if (count _nameAndType == 0) exitWith {};
	private _arr = _nameAndType toArray false;
	private _treeMap = [_arr] call _arrayToHashMap;
	{
		private _type = _x;
		private _typeName = [_type] call VTG_fnc_getTargetOptionName;
		[_typeName, _type] call VTG_fnc_addItemToTree;
		private _index = _forEachIndex;
		{
			[_x, _type, [_index] ] call VTG_fnc_addItemToTree;
		}forEach _y;
	}forEach _treeMap;
};

private _arrayToHashMap = {
	private _list = param[0];

	private _hashMap = createHashMap;
	{
		//was: key(name) - value(type)
		private _value = _x select 0; //key is now value (name)
		private _key = if (count ((_x#1)#0) > 1) then {
			"edit"
		} else { ((_x#1)#0)#0 };
		//value is now key (type)
		//now: value(type) - key(name)

		if ((_hashMap getOrDefault [_key, false]) isEqualTo false) then {
			_hashMap set [_key, [_value]];
		} else {
			private _existingValues = _hashMap get _key;
			_existingValues pushBack _value;
			_hashMap set [_key, _existingValues];
		};
	} forEach _list;
	_hashMap;
};

call _main;

tvExpandAll (VTG_equipUI#5);
(VTG_equipUI#5) tvSetCurSel VTG_Current_module_path;