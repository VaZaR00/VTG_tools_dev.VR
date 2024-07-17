private _tree = VTG_equipUI#1;

private _items = [];

private _getItemData = {
	params["_path"];

	private _class = _tree tvTooltip _path;
	private _func = _tree tvData _path;
	private _amount = _tree tvValue _path;

	[_class, _func, _amount];
};

private _iterate = {
	params["_path", ["_arr", _items, []]];
	private _count = (_tree tvCount _path) - 1;
	for "_i" from 0 to _count do {
		private _downPath = [];
		_downPath append _path;
		_downPath pushBack _i;
		private _text = _tree tvText _downPath;
		private _el = nil;
		if ("Random" in _text) then { //exit loop
			_el = [_downPath, []] call _iterate; //array of randomised items
			_el insert [0, ["Rand"]];
			_arr pushBack _el;
			continueWith _arr;
		};
		//if its common category, just continue
		if ((_tree tvData _downPath) == "") then { //exit loop
			continueWith ([_downPath, _arr] call _iterate); 
		};
		//now we sure its item, so lets get the item data
		_el = [_downPath] call _getItemData; 
		
		if ("Attach" in _text) then { //if it has attachments then iterate through them 
			private _attachs = [_downPath, []] call _iterate;
			_el pushBack _attachs; //add to item data array
		};
		_arr pushBack _el; //add item to array
		_arr
	};
};

[[]] call _iterate;

_items; 
//array of [_class, _func, _amount, (_attachs - optional)]
//or ["Rand", [_class, _func, _amount, (_attachs - optional)]]