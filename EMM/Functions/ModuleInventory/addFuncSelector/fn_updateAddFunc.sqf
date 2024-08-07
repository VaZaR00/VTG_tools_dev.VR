private _inventoryTree = EMM_ActiveModuleTab#1;
private _changeFuncBtn = EMM_equipUI#9; 

private _selectItem = tvCurSel _inventoryTree;

private _func = [_inventoryTree tvData _selectItem] call EMM_fnc_convertAttributeToFunction;

_changeFuncBtn ctrlSetText _func;