private _inventoryTree = VTG_equipUI#1;

private _selectItem = tvCurSel _inventoryTree;
private _changeFuncBtn = VTG_equipUI#9; 

if ((ctrlText _changeFuncBtn) in ["", "none"]) exitWith { ["No item selected", 1] call VTG_fnc_message };

private _category = _inventoryTree tvText [(_selectItem#0)];

if ("To " in _category) exitWith { ["Can't change function when item in equipment!", 1] call VTG_fnc_message };

(findDisplay 313) createDisplay 'AddFuncSelector';