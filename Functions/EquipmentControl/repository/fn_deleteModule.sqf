params[["_fromMenu", false], ["_name", EMM_Current_Module]];

private _delete = {
	private _dataMap = [] call EMM_fnc_getModulesStorage;
	_dataMap deleteAt EMM_Current_Module;
	[_dataMap] call EMM_fnc_setStorage;
	call EMM_fnc_modulesAmount;
};

if (_fromMenu) exitWith {
	call _delete;
};

if (EMM_Current_Module != "none") then {
	call _delete;
};
EMM_Current_Module = "none";
call EMM_fnc_resetModule;
call EMM_fnc_loadModulesTree;