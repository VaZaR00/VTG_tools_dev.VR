private _sides = call VTG_fnc_getTargetSides;
private _types = call VTG_fnc_getTargetsByClass;
VTG_TARGETS_OPTIONS = [["All", "Apply module to ALL PLAYABLE units", "all"]] + _sides + [["*Custom*", "Click ""Edit"" to set custom terms", "edit"]] + _types;

{
	_x call VTG_fnc_addTargetToCombo;
} forEach VTG_TARGETS_OPTIONS;

(VTG_equipUI#7) lbSetCurSel 0;