disableSerialization;
private _name = ctrlText (VTG_equipUI#6); //Name input field
private _type = [(VTG_equipUI#7) lbData (lbCurSel (VTG_equipUI#7))];
//private _targets = (VTG_equipUI#7) lbText (lbCurSel (VTG_equipUI#7));

if (_type#0 == "edit") then {
	_type = VTG_moduleTargets;
};

private _moduleItemsList = call VTG_fnc_parseModuleItemsTree;

[_name, _type, _moduleItemsList] call VTG_fnc_saveToModulesStorage;

if (
	(VTG_Current_Module != "none")&&
	(VTG_Current_Module != _name)
) then {
	[] call VTG_fnc_deleteModule;
};

call VTG_fnc_loadModulesTree;

[_name] call VTG_fnc_changeModule;