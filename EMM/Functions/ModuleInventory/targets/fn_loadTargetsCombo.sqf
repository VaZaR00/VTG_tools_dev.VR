params[["_type", 0]];

EMM_CURRENT_TARGETS_OPTIONS = +(EMM_var_TARGET_PRESETS#_type);

lbClear (EMM_equipUI#7);

{
	_x call EMM_fnc_addTargetToCombo;
} forEach EMM_CURRENT_TARGETS_OPTIONS;

(EMM_equipUI#7) lbSetCurSel 0;