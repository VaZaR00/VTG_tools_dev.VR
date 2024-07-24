private _sides = call EMM_fnc_getTargetSides;
private _types = call EMM_fnc_getTargetsByClass;
EMM_TARGETS_OPTIONS = [["All", "Apply module to ALL PLAYABLE units", "all"]] + _sides + [["*Custom*", "Click ""Edit"" to set custom terms", "edit"]] + [["*Composite*", "Module can be added to other modules as item", "comp"]] + _types;

{
	_x call EMM_fnc_addTargetToCombo;
} forEach EMM_TARGETS_OPTIONS;

(EMM_equipUI#7) lbSetCurSel 0;