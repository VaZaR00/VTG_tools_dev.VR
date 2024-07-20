params["_class"];

if ("comp$$" in _class) exitWith {
	(_class splitString "$$")#1;
};

private _cfg = _class call EMM_fnc_findRootConfig;

getText (configFile >> _cfg >> _class >> "displayName");
