private _clipboard = copyFromClipboard;

if !("EMM_EXPORT" in _clipboard) exitWith {
	["Invalid data!"] call EMM_fnc_message;
};

private _data = call compile _clipboard;

_data deleteAt 0;

[_data] call EMM_fnc_addModulesToStorage;

call EMM_fnc_loadModulesTree;

["Imported successfully!"] call EMM_fnc_message;