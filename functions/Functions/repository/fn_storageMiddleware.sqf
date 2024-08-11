params["_type", "_storage", "_data"];

/*
	Middleware is needed because there 3 ways of saving data: 
		1) in presets (profileNamespace vars)
		2) in mission file (3den attributes)
		1) in temporary variables (for development)

	It is used to get/set full modules data (folders, modules) to storage.

	type:
		0 - get
		1 - set

	storage:
		0 - modules
		1 - folders
*/

private _main = [
	EMM_fnc_getPresetData,
	EMM_fnc_setPresetData
];

private _functions = [
	/*
	scheme
	[
		
		[
			//via preset
		],
		[
			//via 3den attribute
		],
		[
			//via variables (DEV) 
		]
	],
	*/

	//modules
	[
		_main,
		[
			EMM_fnc_att_getModulesStorage,
			EMM_fnc_att_setModulesStorage
		],
		[
			EMM_fnc_var_getModulesStorage,
			EMM_fnc_var_setModulesStorage
		]
	],
	//folders
	[
		_main,
		[
			EMM_fnc_att_getFoldersStorage,
			EMM_fnc_att_setFoldersStorage
		],
		[
			EMM_fnc_var_getFoldersStorage,
			EMM_fnc_var_setFoldersStorage
		]
	]
];

if ((_storage == 1) && (_type == 1)) then {
	_data apply {
		_x resize 4;
		(_x#0) deleteAt (count (_x#0) - 1);
	};
};

private _via = 1;

if (EMM_DEV_STATE) then {_via = 2};

if (EMM_var_MISSION_PRESET_mis != "") then {_via = 0};



private _next = _functions#_storage#_via#_type;

private _result = [_data, _storage] call _next;

//if we need to duplicate preset data to mission file (so it will be accessable to other profiles in mission editor)
if (EMM_var_SAVE_TO_MISSION_FILE_TOO) then { 
	_next = _functions#_storage#1#_type;
	[_data, _storage] call _next;
};

_result