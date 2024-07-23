params[["_one", false]];

EMM_EQUIP_TEST_BOOL = true;
EMM_EQUIP_TEST_FAILED_ARR = [];

_data = nil;

if (_one&&(EMM_Current_Module == "none")) exitWith {
	["No module opened"] call EMM_fnc_message;
};

if (_one) then {
	_data = [false, false, EMM_Current_Module] call EMM_fnc_getModulesStorage;
	_data = [[EMM_Current_Module, _data]];
};

//compile and execute
private _script = [_data] call EMM_fnc_compiler;

if (isNil "_script") exitWith {
	["No modules!"] call EMM_fnc_message;
};

call compile _script;

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
[_result] call EMM_fnc_showFailedReport;

//_result
_script