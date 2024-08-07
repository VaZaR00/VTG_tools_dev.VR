private _dataMap = [] call EMM_fnc_getModulesStorage;
//private _data = values _dataMap;
private _data = _dataMap toArray false;

private _algorithm = {
	private _el = +(_x#1);

	private _weight = 5;
	private _first = ["FAU", "AV", "AB", "AW"];
	private _second = ["AIU", "AIV", "AIB"];
	//else is third

	private _disbalanceCheck = {
		params["_list"];

		private _pairs = [
			["FAU", "AIU"],
			["AV", "AIV"],
			["AB", "AIB"]
		];

		private _firstSet = [];
		private _secondSet = [];

		{
			private _element = _x;
			{
				private _pair = _x;
				if (_element isEqualTo (_pair select 0)) then {
					_firstSet pushBack _element;
				} else {
					if (_element isEqualTo (_pair select 1)) then {
						_secondSet pushBack _element;
					};
				};
			} forEach _pairs;
		} forEach _list;

		private _disbalanceDetected = false;
		{
			private _secondElement = _x;
			private _pairFound = false;
			{
				if (_secondElement == (_x select 1) && {_x select 0 in _firstSet}) then {
					_pairFound = true;
				};
			} forEach _pairs;
			if (!_pairFound) then {
				_disbalanceDetected = true;
			};
		} forEach _secondSet;
		_disbalanceDetected;
	};

	private _check = {
		params["_data"];

		private _fullData = [];

		private _unpackComposites = {
			params["_item"];
			if !(_item isEqualType []) exitWith {};
			if ("comp$$" in (_item#0)) then {
				private _moduleData = [false, false, ((_item#0) splitString "$$")#1] call EMM_fnc_getModulesStorage;
				if !(_moduleData isEqualType true) then {
					_fullData append (_moduleData#1);
					continue;
				};
			};
			_fullData append [_item];
		};

		{
			private _firstEl = (_x#1);
			if (_firstEl isEqualType []) then {
				{
					[_x] call _unpackComposites;
				} forEach _x;
				continue;
			};
			[_x] call _unpackComposites;
		} forEach _data;

		private _onlyFuncs = flatten ((_fullData) apply {
			_res = _x#1;
			if ((_x#0) isEqualTo "Rand") then {
				private _arr = _x;
				_arr deleteAt 0;
				_res = _arr apply {_x#1}
			};
			_res;
		});

		if ((_onlyFuncs findIf { _x in _first }) == -1) exitWith {4};
		if ([_onlyFuncs] call _disbalanceCheck) exitWith {2};
		1 //return
	};

	private _newWeight = [_el#1] call _check;
	if (_newWeight > _weight) then {_weight} else {_newWeight};
};

// _data apply { 
//	 if ((((_x#1)#0)#0) == "") then {

//	 } else {_x} 
// };

private _sorted = [_data, [], _algorithm] call BIS_fnc_sortBy;

_sorted;