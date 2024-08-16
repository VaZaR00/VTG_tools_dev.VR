params ["_tree", "_sel"];

if ((_tree tvData _sel) in ["%EMM_FOLDER%"]) exitWith {};

if (EMM_Current_Module != "%none%") then {
	call EMM_fnc_saveModule;
};

if !(ctrlShown (EMM_equipUI#13)) then {
	[true] call EMM_fnc_hideStartMsg;
};

[_tree, _sel] call EMM_fnc_setCurrentModule;