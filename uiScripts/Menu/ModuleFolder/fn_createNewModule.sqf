if (
	(VTG_Current_Module == "none") &&
	(((VTG_equipUI#1) tvCount []) == 0)
) exitWith {
	call VTG_fnc_newModule;
};
if (call VTG_fnc_checkSaveModule) exitWith {
	call VTG_fnc_newModule;
};
call VTG_fnc_warning;