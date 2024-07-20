params["_data"];

private _dataMap = [false, true] call EMM_fnc_getModulesStorage;
private _composites = (_dataMap toArray false) select {(((_x#1)#0)#0) == "comp"};

if (count _composites != 0) then {
	private _compsItems = _composites apply {[_x#0, "comp$$"+(_x#0), ""]};
	private _comps = ["Modules", _compsItems];
	_data pushBack _comps;
};

_data;