params[["_index", 0]];

if !(isNil "EMM_var_ActiveModuleTab") then {
	[false] call EMM_fnc_setNestParent;
};

{
	(_x#0) ctrlShow false;
	(_x#1) ctrlSetTextColor [1, 1, 1, 0.5];
	(_x#2) ctrlSetBackgroundColor [0, 0, 0, 0.25];
} forEach EMM_moduleTabs;

call EMM_fnc_checkIfEmpty;

private _btn = EMM_moduleTabs#_index#1;
private _bg = EMM_moduleTabs#_index#2;

(EMM_moduleTabs#_index#0) ctrlShow true;
EMM_var_ActiveModuleTab = [_index, EMM_moduleTabs#_index#0];

(EMM_var_ActiveModuleTab#1) ctrlShow true;

_bg ctrlSetBackgroundColor [0, 0, 0, 0.5];
_btn ctrlSetTextColor [1, 1, 1, 1];