params["_class"];

if ("comp$$" in _class) exitWith {
	EMM_var_pic_MODULE
};

if ("%NO_ITEM%" in _class) exitWith {
	EMM_var_pic_NOTHING
};

getText (configFile >> (_class call EMM_fnc_findRootConfig) >> _class >> 'picture')