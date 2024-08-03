private _clipboard = copyFromClipboard;

if !("EMM_EXPORT" in _clipboard) exitWith {
	["Invalid data!"] call EMM_fnc_message;
};

private _data = call compile _clipboard;

private _tagPos = _data findIf {"EMM_EXPORT" in _x};
_data deleteAt _tagPos;

[_data] call EMM_fnc_addModulesToStorage;

call EMM_fnc_loadModulesTree;

if ((_data findIf { 
	if (count (_x#1#0) == 1) then {
		(_x#1#0#0) == "comp"
	}else{false};
}) != -1) then {
	//[] spawn EMM_fnc_loadArsenal;
};

EMM_EQUIP_TEST_FAILED_ARR = [];
{
	[+(_x#1#1), EMM_fnc_checkIfFail] call EMM_fnc_loadModuleItems;
} forEach _data;

["Imported successfully!"] call EMM_fnc_message;

call EMM_fnc_failedToLoadReport; //check if there any problems
