params["_class"];

if ("comp$$" in _class) exitWith {
	(_class splitString "$$")#1;
};
if ("MODULE DON'T EXIST" in _class) exitWith {
	_class
};
if ("No " in _class) exitwith {_class};

private _cfg = _class call EMM_fnc_findRootConfig;

getText (configFile >> _cfg >> _class >> "displayName");
