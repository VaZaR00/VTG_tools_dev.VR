private _storageModules = [true] call EMM_fnc_getModulesStorage;
private _browserMap = call EMM_fnc_setFoldersStorage;

// if !(_storageModules isEqualTo createHashMap) then {
// 	private _modules = _browserMap select {(_x#1) in ["%EMM_MODULE%"]};
// 	_modules = _modules apply {(_x#2)};
// 	private _fakeModulesInStorage = _storageModules select {!(_x in _modules)};
// 	if (count _fakeModulesInStorage > 0) then {
// 		_fakeModulesInStorage apply { [_x, false] call EMM_fnc_deleteModule };
// 	};

// 	// private _fakeModulesInBrowser = _modules select {!((_x#2) in _storageModules)};
// 	// if (count _fakeModulesInBrowser > 0) then {
// 	// 	private _treeMap = [EMM_equipUI#5] call EMM_fnc_treeMapper;
// 	// 	private _forDeletion = _treeMap select {[_fakeModulesInBrowser, (_x#2)] call BIS_fnc_findNestedElement};
// 	// 	_forDeletion apply { (EMM_equipUI#5) tvDelete (_x#0) };
// 	// };
// 	// [str [_fakeModulesInStorage, _fakeModulesInBrowser], 0] call EMM_fnc_message;
// };

call EMM_fnc_checkForComposites;