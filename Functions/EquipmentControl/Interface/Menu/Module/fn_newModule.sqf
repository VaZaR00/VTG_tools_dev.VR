EMM_Current_Module = "none";
EMM_moduleTargets = nil;
(EMM_equipUI#5) tvSetCurSel [-1];

call EMM_fnc_resetModule;

EMM_Current_module_path = [-1];
(EMM_equipUI#5) tvSetCurSel EMM_Current_module_path;