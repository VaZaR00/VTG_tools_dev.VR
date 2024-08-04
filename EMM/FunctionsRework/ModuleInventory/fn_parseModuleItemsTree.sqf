private _result = [];
private _overallMap = [];
private _level = 1;
//private _weapPath = [];
private _dest = _result;

{
	private _treeMap = [_x#0] call EMM_fnc_treeMapper;
	_overallMap append _treeMap;
} forEach EMM_moduleTabs;

{
	private _path = _x#0;
	private _func = _x#1;
	private _name = _x#2;
	private _amount = _x#3;
	private _class = _x#4;

	private _data = [_class, _func, _amount];
	private _i = 0;

	_level = count _path;
	private _dest = _result;

	for "_i" from 1 to (_level - 1) do {
		_dest = _dest#(count _dest - 1);
	};

	if (_func in ["EMM_CATEGORY", "EMM_ATTACHMENT_CATEGORY"]) then {
		if ("(Random)" in _name) then {
			_dest pushBack ["Rand"];
			continue;
		};
		if (_func == "EMM_ATTACHMENT_CATEGORY") then {
			_dest pushBack [];
			continue
		};
		continue
	};

	_dest pushBack _data;

} forEach _overallMap;

_result;