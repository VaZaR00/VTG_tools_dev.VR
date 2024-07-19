EMM_EQUIP_TEST_BOOL = true;
EMM_EQUIP_TEST_FAILED_ARR = [];

//compile and execute
private _script = call EMM_fnc_compiler;
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

EMM_EQUIP_TEST_BOOL = nil;
EMM_EQUIP_TEST_FAILED_ARR = nil;