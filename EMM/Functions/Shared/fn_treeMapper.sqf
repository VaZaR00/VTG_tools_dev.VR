params["_tree", ["_justFolders", false]];

private _result = [];

private _iterate = {
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
			[_downPath] call _iterate;
		};
	};
};

[[]] call _iterate;

_result; 