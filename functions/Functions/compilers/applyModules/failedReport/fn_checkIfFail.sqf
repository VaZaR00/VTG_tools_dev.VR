params["_class", ["_", 0], ["__", 0]];

_class = _class#0;
private _name = _class call EMM_fnc_getClassDisplayName;

private _check1 = (_name == "");
private _check2 = (([_name] call EMM_fnc_getModules) isEqualTo []);
private _check3 = ("comp$$" in _class);

if (_class in ["%NO_ITEM%"]) exitwith {false};

if (_check1||(_check2&&_check3)) exitwith {
	EMM_EQUIP_TEST_FAILED_ARR pushBack _class;
	true;
};

false;