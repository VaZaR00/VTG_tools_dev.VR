params["_class"];

private _cfg = _class call EMM_fnc_findRootConfig;

getText (configFile >> _cfg >> _class >> "displayName");
