#include "..\..\defines.hpp";

params["_class"];

if ("comp$$" in _class) exitWith {
	PR(_name) = (_class splitString "$$")#1;
	PR(_type) = ([2, _name] call EMM_fnc_getModules)#0;
	TYPE_DATA_BY_I(_type, 0)
};

if ("%NO_ITEM%" in _class) exitWith {
	EMM_var_pic_NOTHING
};

getText (configFile >> (_class call EMM_fnc_findRootConfig) >> _class >> 'picture')