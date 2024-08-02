params[["_fromMenu", false], ["_name", EMM_Current_Module]];

[_name] call EMM_fnc_checkForComposites;

private _delete = {
	private _dataMap = [] call EMM_fnc_getModulesStorage;
	_dataMap deleteAt _name;
	[_dataMap] call EMM_fnc_setStorage;
	call EMM_fnc_modulesAmount;
};

if ((EMM_Current_Module != "none")||_fromMenu) then {
	call _delete;
};
if (_name == EMM_Current_Module) then {
	EMM_Current_Module = "none";
	call EMM_fnc_resetModule;
};
call EMM_fnc_loadModulesTree;

["Module deleted"] call EMM_fnc_message;
