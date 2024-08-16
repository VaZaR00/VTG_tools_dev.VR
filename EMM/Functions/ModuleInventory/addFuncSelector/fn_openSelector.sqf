private _changeFuncBtn = EMM_equipUI#9; 

if ((ctrlText _changeFuncBtn) in ["", "none"]) exitWith { ["No item selected or can't change", 1] call EMM_fnc_message };

EMM_var_disp_MODULE_MANAGER createDisplay 'EMM_AddFuncSelector';