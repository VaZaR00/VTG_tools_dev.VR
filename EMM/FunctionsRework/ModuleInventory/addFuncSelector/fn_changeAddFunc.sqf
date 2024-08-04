private _display = param[0];
private _combo = _display displayCtrl 2100;
private _func = _combo lbText (lbCurSel _combo);

if (_func == "Default") exitWith {};

_funcShort = _func call EMM_fnc_convertFunctionToAttribute;

private _moduleTree = EMM_ActiveModuleTab#1;

private _selection = tvCurSel _moduleTree;
_moduleTree tvSetData [_selection, _funcShort];

[] call EMM_fnc_updateAddFunc;