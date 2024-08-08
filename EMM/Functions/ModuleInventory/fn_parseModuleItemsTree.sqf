private _attachs = "%EMM_ATTACHMENT_CATEGORY%";
private _categoriesLabels = ["%EMM_CATEGORY%", _attachs];

private _iterate = {
	params["_elements", "_dest"];

	{
		private _path = _x#0;
		private _func = _x#1;
		private _name = _x#2;
		private _amount = _x#3;
		private _class = _x#4;
		private _childrens = _x#5;

		if (_func in _categoriesLabels) then {
			if ("(Random)" in _name) then {
				_dest pushBack ["Rand"];
			};
			if (count _childrens != 0) then {
				private _newDest = if (["Rand"] in _dest) then {
					_dest#-1;
				} else {_dest};
				[_childrens, _newDest] call _iterate;
			};
			continue;
		};

		_dest pushBack [_class, _func, _amount];

		if (count _childrens != 0) then {
			(_dest#-1) pushBack [];
			[_childrens, _dest#-1#-1] call _iterate;
		};
	} forEach _elements;
};


private _overallMap = [];
{
	if (((_x#0) tvCount []) == 0) then {continue};
	private _treeMap = [_x#0, true] call EMM_fnc_treeMapper;
	_overallMap pushBack _treeMap;
} forEach EMM_moduleTabs;

if (_overallMap isEqualTo []) exitWith {[]};


private _result = [];
private _parsedTabs = [];
{
	_parsedTabs pushBack [];
	[_x, _parsedTabs#-1] call _iterate;
} forEach _overallMap;

{
	_result append _x;
} forEach _parsedTabs;

_result