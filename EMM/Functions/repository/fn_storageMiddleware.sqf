params["_type", "_storage", ["_data", []]];

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
		0 - folders
		1 - modules
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
	],
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
	]
];

////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// PREPARING DATA AND "NEXT" FUNCTION
////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// if ((_storage == 0) && (_type == 1) && {!(isNil "_data")}) then {
// 	_data apply {
// 		_x resize 4;
// 		(_x#0) deleteAt (count (_x#0) - 1);
// 	};
// };

private _via = 1;

if (EMM_DEV_STATE) then {_via = 2};

if (!(EMM_var_MISSION_PRESET_mis isEqualTo "")) then {_via = 0};

private _next = _functions#_storage#_via#_type;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// EXECUTING "NEXT" FUNCTION
////////////////////////////////////////////////////////////////////////////////////////////////////////////////


private _result = [_storage, _data] call _next;


////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// WORKING WITH DATA CAME FROM "NEXT" FUNCTION
////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//if we need to duplicate preset data to mission file (so it will be accessable to other profiles in mission editor)
if ((EMM_var_MISSION_PRESET_mis != "") && EMM_var_SAVE_TO_MISSION_FILE_TOO && (_type == 1)) then { 
	private _presetData = [] call EMM_fnc_getPresetData;
			
	[nil, _presetData#0] call EMM_fnc_att_setFoldersStorage;
	[nil, _presetData#1] call EMM_fnc_att_setModulesStorage;
};

if (isNil "_result") exitWith {[]};

if (_type == 1) exitWith {_result};

if (_result isEqualType "") exitWith {
	if (_result isEqualTo "") exitWith {[]};
	_data = call compile _result;
	if (_storage == 1) then {
		_data = createHashMapFromArray _data;
	};
	+_data;
};

if (!(_result isEqualType []) && !(_result isEqualType createHashMap)) exitWith {[]};

if ((_type == 0) && (_storage == 1) && {!(_result isEqualType createHashMap)}) then {
	_result = createHashMapFromArray _result;
};


+_result