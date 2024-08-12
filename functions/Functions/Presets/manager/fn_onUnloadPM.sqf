EMM_PM_listBox = nil; 

if (EMM_RESTART_WHEN_PM_CLOSED) then {
	[EMM_equipUI#0] call EMM_fnc_close;
	[] spawn EMM_fnc_openModulesManager;
}; 

EMM_RESTART_WHEN_PM_CLOSED = nil;