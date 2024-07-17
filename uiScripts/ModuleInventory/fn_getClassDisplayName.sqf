params["_class"];

private _cfg = _class call VTG_fnc_findRootConfig;

getText (configFile >> _cfg >> _class >> "displayName");
