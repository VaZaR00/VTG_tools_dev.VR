params["_name", "_type", "_moduleItemsList"];

private _dataMap = [] call EMM_fnc_getModulesStorage; 
			//_type = [[*]]
_dataMap set [_name, [_type, _moduleItemsList]];

[_dataMap] call EMM_fnc_setStorage;

call EMM_fnc_modulesAmount;