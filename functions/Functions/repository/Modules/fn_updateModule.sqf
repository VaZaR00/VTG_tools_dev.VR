params["_name", ["_type", "all"], "_moduleItemsList"];

private _data = [] call EMM_fnc_getModules; 

			//_type = [[*]]
_data set [_name, [_type, _moduleItemsList]];

[_data] call EMM_fnc_setModulesStorage;
