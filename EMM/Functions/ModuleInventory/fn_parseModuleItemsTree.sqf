private _result = [];
private _overallMap = [];
//private _weapPath = [];

{
	if (((_x#0) tvCount []) == 0) then {continue};
	private _treeMap = [_x#0] call EMM_fnc_treeMapper;
	_overallMap append _treeMap;
} forEach EMM_moduleTabs;

if (_overallMap isEqualTo []) exitWith {[]};

private _level = 0; 

{
	private _path = _x#0;
	private _func = _x#1;
	private _name = _x#2;
	private _amount = _x#3;
	private _class = _x#4;

	private _data = [_class, _func, _amount];

	private _dest = _result; 

	if (_func in ["%EMM_CATEGORY%", "%EMM_ATTACHMENT_CATEGORY%"]) then {
		_level = 0;
		if (_func == "%EMM_ATTACHMENT_CATEGORY%") then {
			_dest = (_dest#-1);
			if ((_dest#0) == "Rand") then {
				_dest = (_dest#-1);
				_level = _level + 1;
			};
			if (count _dest < 4) then {
				_dest pushBack [];
				_dest = (_dest#-1); 
			} else {
				_dest = (_dest#-1);
			};
			_level = _level + 2;
		};
		if ("(Random)" in _name) then {
			_dest pushBack ["Rand"];
			_level = _level + 1;
		};
		continue
	};
	if (count _path < _level) then {_level = 0};

	for "_i" from 1 to _level do {
		_dest = _dest#-1;
	};
	private _showDest = +_dest;

	_dest pushBack _data;
	
	_showDest = +_dest;


} forEach _overallMap;

_result