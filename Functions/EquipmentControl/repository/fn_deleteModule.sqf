if (VTG_Current_Module != "none") then {
	private _dataMap = [] call VTG_fnc_getModulesStorage;
	_dataMap deleteAt VTG_Current_Module;
	[_dataMap] call VTG_fnc_setStorage;
	call VTG_fnc_modulesAmount;
};
VTG_Current_Module = "none";
call VTG_fnc_resetModule;
call VTG_fnc_loadModulesTree;