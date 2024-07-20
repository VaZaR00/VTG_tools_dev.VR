if (
	(EMM_Current_Module == "none") &&
	(((EMM_equipUI#1) tvCount []) == 0)
) exitWith {
	call EMM_fnc_newModule;
};
if (call EMM_fnc_checkSaveModule) exitWith {
	call EMM_fnc_newModule;
};
call EMM_fnc_warning;

