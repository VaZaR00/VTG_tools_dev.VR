params[["_one", false]];

EMM_EQUIP_TEST_BOOL = true;
EMM_EQUIP_TEST_FAILED_ARR = [];

_data = nil;

if (_one&&(EMM_Current_Module == "none")) exitWith {
	["No module opened"] call EMM_fnc_message;
};

if (_one) then {
	_data = [[false, false, EMM_Current_Module] call EMM_fnc_getModulesStorage];
};

//compile and execute
private _script = [_data] call EMM_fnc_compiler;
call compile _script;

//get test results
private _result = [];
private _arr = +EMM_EQUIP_TEST_FAILED_ARR;

{
	private _el = _x;

	if ((_result findIf {(_el#1) in _x}) != -1) exitWith {};

	private _amount = { _el isEqualTo _x } count _arr;
	_el insert [0, [_amount]];
	_result pushBack _el;
} forEach _arr;

//_result
[str EMM_EQUIP_TEST_FAILED_ARR] call EMM_fnc_message;

EMM_EQUIP_TEST_BOOL = nil;
EMM_EQUIP_TEST_FAILED_ARR = nil;
_script