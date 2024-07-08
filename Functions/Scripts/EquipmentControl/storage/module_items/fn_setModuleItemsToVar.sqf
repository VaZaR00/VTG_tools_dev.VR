private _tree = VTG_equipUI#1;

private _nestedCategories = [];

private _getItemData = {
	params["_path"];

	private _class = _tree tvTooltip _path;
	private _func = _tree tvData _path;
	private _amount = _tree tvValue _path;

	[_class, _func, _amount];
};

private _iterate = {
	params["_path"];

	_count = _tree tvCount _path;
	for "_i" from 0 to _count do {
		private _text = _tree tvText [_i];
		if (_text in _nestedCategories) then {

		};
		[[_i, _j]] call _getItemData;
	};
};

hint str [(_tree tvValue _sel),
 (_tree tvData _sel), 
 (_tree tvTooltip _sel), (_tree tvText _sel)];


for "_i" from 0 to (_tree tvCount []) do {
	private _text = _tree tvText [_i];
	if ("To " in _text) then {
		for "_j" from 0 to (_tree tvCount [_i]) do {
			[[_i, _j]] call _getItemData;
		};
		continue;
	};
	for "_j" from 0 to (_tree tvCount [_i]) do {
		[[_i, _j]] call _getItemData;
	};
};

