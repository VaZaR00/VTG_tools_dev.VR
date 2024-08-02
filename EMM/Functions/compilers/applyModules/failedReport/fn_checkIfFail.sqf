params["_class", ["_", 0], ["__", 0]];

_class = _class#0;
private _name = _class call EMM_fnc_getClassDisplayName;

private _check1 = (_name == "");
private _check2 = (([false, false, false, _name] call EMM_fnc_getModulesStorage) isEqualTo false);
private _check3 = ("comp$$" in _class);

if ("No " in _class) exitwith {false};

if (_check1||(_check2&&_check3)) exitwith {
	EMM_EQUIP_TEST_FAILED_ARR pushBack _class;
	true;
};

false;