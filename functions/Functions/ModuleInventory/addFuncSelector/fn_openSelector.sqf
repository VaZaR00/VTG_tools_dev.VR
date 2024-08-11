private _changeFuncBtn = EMM_equipUI#9; 

if ((ctrlText _changeFuncBtn) in ["", "none"]) exitWith { ["No item selected", 1] call EMM_fnc_message };

(findDisplay 11549) createDisplay 'EMM_AddFuncSelector';