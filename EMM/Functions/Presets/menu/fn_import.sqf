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

EMM_var_temp_RENAME_EL_TYPE = "Module";
_modules = _modules apply {
	[_x, 0] call EMM_fnc_setCopyName;
};
_folders = _folders apply {
	if ((_x#1) == "%EMM_MODULE%") then {
		[_x, 2] call EMM_fnc_setCopyName;
	} else {_x};
};

EMM_var_temp_RENAME_EL_TYPE = "Folder";
_folders = _folders apply {
	if ((_x#1) == "%EMM_FOLDER%") then {
		[_x, 2] call EMM_fnc_setCopyName;
	} else {_x};
};
EMM_var_temp_RENAME_EL_TYPE = nil;

[_modules] call EMM_fnc_addModule;
[_folders] call EMM_fnc_importFolders;

[] call EMM_fnc_updateBrowser;
[] call EMM_fnc_checkForHiddenModules;
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
