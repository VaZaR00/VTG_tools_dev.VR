_tree = VTG_equipUI#1;

// private _getPath = {
// 	private _sel = tvCurSel _tree;
// 	_sel deleteAt (count _sel - 1);
// 	_sel;
// };
// private _sel = call _getPath;
// hint str _sel;
params["_path", ["_set", false]];

private _randTxT = " (Random)";
hint str [_tree, _path];

private _text = _tree tvText _path;
if (_randTxT in _text) exitWith {};

if (_set) exitWith {
	_tree tvSetText [_path, _text + _randTxT];
};

private _randPos = _text find _randTxT;
private _editedTxT = _text select [0, _randPos];

_tree tvSetText [_path, _editedTxT];