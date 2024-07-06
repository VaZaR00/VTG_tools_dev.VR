params["_inventoryTree", "_path", "_text"];

private _categCount = _inventoryTree tvCount _path;

if (_categCount == 0) then {
	_path pushBack (_inventoryTree tvAdd [_path, _text]); //if module is empty
}else{
	private _notFound = true;

	for "_i" from 0 to (_categCount) do { //if not empty then iterate through its categories
		private _iText = _inventoryTree tvText (_path + [_i]);

		if (_iText == _text) then { //if its target category then call function to peek item
			_path pushBack _i;
			_notFound = false;
			break;
		};
	};

	if (_notFound) then {
		_path pushBack (_inventoryTree tvAdd [_path, _text]);
	};
};
_path;