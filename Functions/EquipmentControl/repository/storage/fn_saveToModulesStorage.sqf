params["_name", "_type", "_moduleItemsList"];

private _dataMap = [] call VTG_fnc_getModulesStorage; 
			//_type = [[*]]
_dataMap set [_name, [_type, _moduleItemsList]];

[_dataMap] call VTG_fnc_setStorage;

call VTG_fnc_modulesAmount;
//["Modules data saved"] call VTG_fnc_message;