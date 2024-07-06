params[["_destination", "General"], "_arsenalCategory"];
private _path = 0;
private _inventoryTree = VTG_equipUI#1;
private _invTreeDestCatCount = _inventoryTree tvCount []; //count of destination categories in module

if (_invTreeDestCatCount == 0) then {
	_path = [(_inventoryTree tvAdd [[], _destination])]; //if module is empty
}else{
	private _notFound = true;
	for "_dest" from 0 to (_invTreeDestCatCount) do { //if not empty then iterate through its categories
		private _destText = _inventoryTree tvText [_dest];
		if (_destText == _destination) then { //if its target category then call function to peek item
			_path = [_dest];
			_notFound = false;
			break;
		};
	};
	if (_notFound) then {
		_path = [(_inventoryTree tvAdd [[], _destination])];
	};
};

private _invTreeCatCount = _inventoryTree tvCount _path;

if (_invTreeCatCount == 0) then {
	_path = [_path#0, (_inventoryTree tvAdd [_path, _arsenalCategory])]; //if module is empty
}else{
	private _notFound = true;
	for "_categ" from 0 to (_invTreeCatCount) do { //if not empty then iterate through its categories
		private _catText = _inventoryTree tvText [_path#0, _categ];
		if (_catText == _arsenalCategory) then { //if its target category then call function to peek item
			_path = [_path#0, _categ];
			_notFound = false;
			break;
		};
	};
	if (_notFound) then {
		_path = [_path#0, (_inventoryTree tvAdd [_path, _arsenalCategory])];
	};
};
//function to check if item already in module
_path; 