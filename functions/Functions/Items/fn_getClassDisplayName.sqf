params["_class"];

if ("comp$$" in _class) exitWith {
	(_class splitString "$$")#1;
};
if ("MODULE DON'T EXIST" in _class) exitWith {
	_class
};
if ("%NO_ITEM%" in _class) exitwith {"Nothing"};

private _cfg = _class call EMM_fnc_findRootConfig;

getText (configFile >> _cfg >> _class >> "displayName");
