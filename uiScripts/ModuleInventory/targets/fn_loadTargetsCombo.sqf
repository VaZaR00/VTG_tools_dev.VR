private _sides = call VTG_fnc_getTargetSides;
private _types = call VTG_fnc_getTargetsByClass;
private _options = _sides + [["*Custom*", "Click ""Edit"" to set custom terms"]] + _types;

{
	_x call VTG_fnc_addTargetToCombo;
} forEach _options;