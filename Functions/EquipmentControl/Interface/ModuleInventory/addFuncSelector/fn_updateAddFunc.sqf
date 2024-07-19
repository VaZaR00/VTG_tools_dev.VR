private _inventoryTree = EMM_equipUI#1;
private _changeFuncBtn = EMM_equipUI#9; 

private _selectItem = tvCurSel _inventoryTree;

if (count _selectItem == 0) exitWith { _changeFuncBtn ctrlSetText "none" };

private _func = [_inventoryTree tvData _selectItem] call EMM_fnc_convertAttributeToFunction;

_changeFuncBtn ctrlSetText _func;