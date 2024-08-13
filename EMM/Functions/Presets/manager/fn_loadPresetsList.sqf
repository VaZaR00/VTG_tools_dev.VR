params[["_search", ""]];

lnbClear EMM_PM_listBox;

private _presetsList = keys (call EMM_fnc_getPresetsStorage);

_presetsList = _presetsList select { [_search, _x, false] call BIS_fnc_inString };

EMM_PM_listBox lnbSetColumnsPos [0.01];
{
	EMM_PM_listBox lnbAddRow [_x, ""];
} forEach _presetsList;

EMM_PM_listBox lnbSort [0];