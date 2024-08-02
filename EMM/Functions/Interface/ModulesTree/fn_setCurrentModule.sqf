params ["_tree", "_sel"];

if (count _sel != 2) exitWith {};

private _select = {
	EMM_Current_module_path = _sel;
	(EMM_equipUI#5) tvSetCurSel EMM_Current_module_path;
};

if (EMM_Current_Module == "none") exitWith {
	if (((EMM_equipUI#1) tvCount []) != 0) exitWith {
		if (call EMM_fnc_checkSaveModule) exitWith {
			[_tree tvText _sel] call EMM_fnc_changeModule;
			call _select;
		};
		call EMM_fnc_warning;
	};
	[_tree tvText _sel] call EMM_fnc_changeModule;
	call _select;
};
if (call EMM_fnc_checkSaveModule) exitWith {
	[_tree tvText _sel] call EMM_fnc_changeModule;
	call _select;
};
call EMM_fnc_warning;

(EMM_equipUI#5) tvSetCurSel EMM_Current_module_path;
//(EMM_Current_Module != "none")  
