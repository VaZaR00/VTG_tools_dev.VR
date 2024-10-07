params["_name", ["_targets", "all"], "_moduleItemsList", ["_type", 0]];

private _data = [] call EMM_fnc_getModules; 

			//_targets = [[*]]
_data set [_name, [_targets, _moduleItemsList, _type]];

[_data] call EMM_fnc_setModulesStorage;
