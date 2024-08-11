params["_tree", ["_2d", false], ["_justFolders", false]];

private _result = [];

private _iterate1D = { //this algorithm will create 1 Dimensiononal array 
	params["_path"];

	private _count = (_tree tvCount _path) - 1;

	for "_i" from 0 to _count do {
		private _downPath = [];
		
		_downPath append _path;
		_downPath pushBack _i;

		private _data = _tree tvData _downPath;
		private _text = _tree tvText _downPath;
		private _value = _tree tvValue _downPath;
		private _tooltip = _tree tvTooltip _downPath;

		if (_justFolders && (_data in ["%EMM_FOLDER%", "%EMM_CATEGORY%"])) then {
			continue;
		};

		private _el = [_downPath, _data, _text, _value, _tooltip];

		_result pushBack _el;

		if ((_tree tvCount _downPath) != 0) then {
			[_downPath] call _iterate1D;
		};
	};
};

private _iterate2D = { //this algorithm will create 2 Dimensiononal array (nested)
	params["_path", "_dest"];

	private _count = (_tree tvCount _path) - 1;

	for "_i" from 0 to _count do {
		private _downPath = [];
		
		_downPath append _path;
		_downPath pushBack _i;

		private _data = _tree tvData _downPath;
		private _text = _tree tvText _downPath;
		private _value = _tree tvValue _downPath;
		private _tooltip = _tree tvTooltip _downPath;

		if (_justFolders && (_data in ["%EMM_FOLDER%", "%EMM_CATEGORY%"])) then {
			continue;
		};

		private _el = [_downPath, _data, _text, _value, _tooltip, []];

		_dest pushBack _el;

		if ((_tree tvCount _downPath) != 0) then {
			[_downPath, (_dest#-1#-1)] call _iterate2D;
		};
	};
};

if (_2d) then {
	[[], _result] call _iterate2D;
} else {
	[[]] call _iterate1D;
}; 

_result
