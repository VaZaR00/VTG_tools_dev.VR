private _tree = EMM_equipUI#5;
private _sel = tvCurSel _tree;  

if (count _sel != 2) exitWith {};

private _name = _tree tvText _sel;

[true, _name] call EMM_fnc_deleteModule;