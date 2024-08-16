params[["_one_", false]];

private _main = {
	params[["_one", false]];

	if (_one && (EMM_Current_Module == "%none%")) exitWith {
		["No module opened", 1] call EMM_fnc_message;
	};

	EMM_EQUIP_TEST_BOOL = true;
	EMM_EQUIP_TEST_FAILED_ARR = [];

	private _scriptArr = if (_one) then {
		private _data = [EMM_Current_Module] call EMM_fnc_getModules;
		_data = [[EMM_Current_Module, _data]];
		[_data, false] call EMM_fnc_compiler;
	} else {
		[nil, false] call EMM_fnc_compiler;
	};

	_scriptArr apply {
		private _script = _x;
		if (EMM_var_COMPILE_IN_SPAWN) then {
			private _waitHandle = [] spawn {
				uiSleep 0.4;
				["Give started. Wait till the end (reopen mission to terminate proccess)"] call EMM_fnc_message;
				while {true} do {
					uiSleep 10;
					["Give. Still working..."] call EMM_fnc_message;
				};
			};

			_script = format["private _handle = [] spawn {%1};; waitUntil { scriptDone _handle };", _script];
			_script = compile _script;
			private _handle = [] spawn _script;
			waitUntil { scriptDone _handle };
			terminate _waitHandle;
		} else {
			call compile _script;
		};
		_script
	};

	//get test results
	private _result = [];
	private _arr = +EMM_EQUIP_TEST_FAILED_ARR;
	{
		private _el = _x; //mdl , unit , item

		if ((_result findIf {((_el#1) in _x)&&((_el#2) in _x)}) != -1) then {continue};

		private _amount = { _el isEqualTo _x } count _arr;
		_el insert [0, [_amount]];

		_result pushBack _el; ///itmCount, mdl , unit , item
	} forEach _arr;

	EMM_EQUIP_TEST_FAILED_ARR = _result;
	[_result] call EMM_fnc_failedToGiveReport;

	EMM_EQUIP_TEST_BOOL = nil;

	//_result
	_scriptArr
};


if (EMM_var_COMPILE_IN_SPAWN) then {
	[_one_] spawn _main;
} else {
	[_one_] call _main;
};