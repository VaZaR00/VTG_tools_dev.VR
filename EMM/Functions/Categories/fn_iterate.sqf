params[["_tree", EMM_equipUI#1], "_path", "_text", ["_byData", false], ["_new", true]];

private _categCount = _tree tvCount _path;

private _addNew = {
	_path pushBack (_tree tvAdd [_path, _text]);
	private _index = [_text] call EMM_fnc_categorySortIndex;
	_tree tvSetValue [_path, _index];
};

if ((_categCount == 0) && _new) then {
	call _addNew; //if module is empty
}else{
	private _notFound = true;

	for "_i" from 0 to (_categCount) do { //if not empty then iterate through its categories
		private _iText = nil;
		if (_byData) then {
			_iText = _tree tvData (_path + [_i]);
		}else{
			_iText = _tree tvText (_path + [_i]);
		};

		if (_text in _iText) then { //if its target category then call function to peek item
			_path pushBack _i;
			_notFound = false;
			break;
		};
	};

	if (_notFound && _new) then {
		call _addNew;
	};
};
_path;