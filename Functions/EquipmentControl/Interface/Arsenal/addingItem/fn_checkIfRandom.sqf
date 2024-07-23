params["_path", ["_set", false]];

_tree = EMM_equipUI#1;

private _stackable = ["To ", "Magaz", "Other"];
private _categories = [];
private _categ = [];
for "_i" from 0 to (count _path - 2) do {
	_categ pushBack (_path#_i);
	_categories pushBack (_tree tvText _categ);
};
if (_categories findIf {
	private _el = _x;
	(_stackable findIf { _x in _el }) != -1
	} != -1
) exitWith {};

private _randTxT = " (Random)";

private _text = _tree tvText _categ;

if (_set) exitWith {
	if (_randTxT in _text) exitWith {};
	if ((_tree tvCount _categ) < 2) exitWith {};
	_tree tvSetText [_categ, _text + _randTxT];
};

if ((_tree tvCount _categ) > 2) exitWith {};

private _randPos = _text find _randTxT;
private _editedTxT = if (_randPos != -1) 
then {
	_text select [0, _randPos];
}else{ _text };

_tree tvSetText [_categ, _editedTxT];