params[["_showMsg", true]];

if (((EMM_equipUI#1) tvCount []) == 0) exitWith {
	if (_showMsg) then {["Module is empty!", 1] call EMM_fnc_message};
	true;
};
private _name = ctrlText (EMM_equipUI#6);
if (_name in ["", "none"]) exitWith {
	if (_showMsg) then {["Modules Name is empty or incorrect!", 1] call EMM_fnc_message};
	true;
};
if (
	(_name in ([] call EMM_fnc_getModulesStorage))&&
	(EMM_Current_Module != _name)
) exitWith {
	if (_showMsg) then {["Module Name is already exists!", 1] call EMM_fnc_message};
	true;
};

false;
