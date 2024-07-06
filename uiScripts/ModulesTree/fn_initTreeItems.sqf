private _main = {
	//_moduleNames = ["keys"] call VTG_fnc_getAllModulesFromStorage;
	_moduleNames = ["all$$med", "red$$rpg", "blue$$grens", "all$$links"];
	
	if (_moduleNames isEqualTo false) exitWith { hint "error"; }; //return false  call VTG_fnc_emptyStorageError;

	_splitted = _moduleNames apply { _x splitString "$$" };
	_treeMap = [_splitted] call _arrayToHashMap;

	{
		[_x] spawn VTG_fnc_addItemToTree;
		{
			[_x, [[_forEachIndex]] ] spawn VTG_fnc_addItemToTree;
		}forEach _y;
	}forEach _treeMap;
};

private _arrayToHashMap = {
	_list = param[0];

	_hashMap = createHashMap;
	{
		_key = _x select 0;
		_value = _x select 1;

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

