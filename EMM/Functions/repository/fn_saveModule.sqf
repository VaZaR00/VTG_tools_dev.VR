disableSerialization;

if (_type#0 == "edit") then {
	_type = EMM_moduleTargets;
};

private _moduleItemsList = call EMM_fnc_parseModuleItemsTree;

[_name, _type, _moduleItemsList] call EMM_fnc_saveItemToStorage;

["Modules data saved"] call EMM_fnc_message;