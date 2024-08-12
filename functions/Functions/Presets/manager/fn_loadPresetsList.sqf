params[["_search", ""]];

lnbClear EMM_PM_listBox;

private _presetsList = keys (call EMM_fnc_getPresetsStorage);

_presetsList = _presetsList select { [_search, _x, false] call BIS_fnc_inString };
_presetsList = _presetsList apply {[_x, 0, ""]};

_listBox lnbAddArray _presetsList;