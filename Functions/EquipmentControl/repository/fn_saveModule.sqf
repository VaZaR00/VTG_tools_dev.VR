disableSerialization;
private _name = ctrlText (EMM_equipUI#6); //Name input field
private _type = [(EMM_equipUI#7) lbData (lbCurSel (EMM_equipUI#7))];
//private _targets = (EMM_equipUI#7) lbText (lbCurSel (EMM_equipUI#7));

if (_type#0 == "edit") then {
	_type = EMM_moduleTargets;
};

private _moduleItemsList = call EMM_fnc_parseModuleItemsTree;

[_name, _type, _moduleItemsList] call EMM_fnc_saveItemToStorage;

if (
	(EMM_Current_Module != "none")&&
	(EMM_Current_Module != _name)
) then {
	[] call EMM_fnc_deleteModule;
};
// hint str _moduleItemsList;
// copyToClipboard str _moduleItemsList;
call EMM_fnc_loadModulesTree;

[_name] call EMM_fnc_changeModule;

["Modules data saved"] call EMM_fnc_message;