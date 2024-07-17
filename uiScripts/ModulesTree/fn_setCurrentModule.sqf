params ["_tree", "_sel"];

if (count _sel != 2) exitWith {};

private _select = {
	VTG_Current_module_path = _sel;
	(VTG_equipUI#5) tvSetCurSel VTG_Current_module_path;
};

if (VTG_Current_Module == "none") exitWith {
	if (((VTG_equipUI#1) tvCount []) != 0) exitWith {
		if (call VTG_fnc_checkSaveModule) exitWith {
			[_tree tvText _sel] call VTG_fnc_changeModule;
			call _select;
		};
		call VTG_fnc_warning;
	};
	[_tree tvText _sel] call VTG_fnc_changeModule;
	call _select;
};
if (call VTG_fnc_checkSaveModule) exitWith {
	[_tree tvText _sel] call VTG_fnc_changeModule;
	call _select;
};
call VTG_fnc_warning;

(VTG_equipUI#5) tvSetCurSel VTG_Current_module_path;
//(VTG_Current_Module != "none")  
