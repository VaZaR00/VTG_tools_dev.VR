private _inventoryTree = VTG_equipUI#1;
private _changeFuncBtn = VTG_equipUI#9; 

private _selectItem = tvCurSel _inventoryTree;

if (count _selectItem == 0) exitWith { _changeFuncBtn ctrlSetText "none" };

private _func = [_inventoryTree tvData _selectItem] call VTG_fnc_convertAttributeToFunction;

_changeFuncBtn ctrlSetText _func;