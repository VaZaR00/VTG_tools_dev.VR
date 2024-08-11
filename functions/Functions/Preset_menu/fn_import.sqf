private _clipboard = copyFromClipboard;

if !("EMM_EXPORT" in _clipboard) exitWith {
	["Invalid data!", 1] call EMM_fnc_message;
};

private _data = call compile _clipboard;
private _folders = _data#1;
private _modules = _data#2;

// private _tagPos = _modules findIf {"EMM_EXPORT" in _x};
// _modules deleteAt _tagPos;


if (_folders isEqualTo []) then {
	_folders = _modules apply {[[], "%EMM_MODULE%", _x#0, 0]};
};

private _setCopyName = {
	params["_itemData", "_pos"];
	
	private _storage = [false, false] call EMM_fnc_getModulesStorage;
	if (
		(_storage isEqualTo createHashMap) &&
		(_storage isEqualTo [])
	) exitWith {
		_itemData
	};

	private _startName = (_itemData#_pos);
	if !([_startName] call EMM_fnc_checkIfModuleNameExists) exitWith {_itemData};

	private _index = 0;
	while {_index < 100} do {
		private _add = if (_index < 100) then {format["(%1)", _index]} else {(systemTimeUTC joinString "-")};
		private _name = _startName + _add;

		_index = _index + 1;
		_itemData set [_pos, _name];

		if !([_name] call EMM_fnc_checkIfModuleNameExists) exitWith {_itemData};
	};

	_itemData
};

_modules = _modules apply {
	[_x, 0] call _setCopyName;
};

_folders = _folders apply {
	[_x, 2] call _setCopyName;
};

[_modules] call EMM_fnc_addModulesToStorage;
[_folders] call EMM_fnc_importFolders;

[] call EMM_fnc_updateBrowser;
[] call EMM_fnc_loadModuleBrowser;

EMM_EQUIP_TEST_FAILED_ARR = [];
{
	[+(_x#1#1), EMM_fnc_checkIfFail] call EMM_fnc_loadModuleItems;
} forEach _modules;

private _msg = if (EMM_EQUIP_TEST_FAILED_ARR isEqualTo []) then {
	["Imported successfully!", 0]
} else {["Imported with some problems", 1]};

//call EMM_fnc_updateStorage;

_msg call EMM_fnc_message;

call EMM_fnc_failedToLoadReport; //check if there any problems
