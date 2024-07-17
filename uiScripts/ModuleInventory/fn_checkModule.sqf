params[["_showMsg", true]];

if (((VTG_equipUI#1) tvCount []) == 0) exitWith {
	if (_showMsg) then {["Module is empty!"] call VTG_fnc_message};
	true;
};
private _name = ctrlText (VTG_equipUI#6);
if (_name in ["", "none"]) exitWith {
	if (_showMsg) then {["Modules Name is empty or incorrect!"] call VTG_fnc_message};
	true;
};
if (
	(_name in (call VTG_fnc_getModulesStorage))&&
	(VTG_Current_Module != _name)
) exitWith {
	if (_showMsg) then {["Module Name is already exists!"] call VTG_fnc_message};
	true;
};

false;
