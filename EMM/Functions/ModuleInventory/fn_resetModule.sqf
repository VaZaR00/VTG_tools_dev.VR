{
	tvClear (_x#0);
} forEach EMM_moduleTabs;

EMM_Current_Module = "%none%";
EMM_moduleTargets = nil;
EMM_Current_Module_type = nil;

[] call EMM_fnc_updateAddFunc;

(EMM_equipUI#7) lbSetCurSel 0;