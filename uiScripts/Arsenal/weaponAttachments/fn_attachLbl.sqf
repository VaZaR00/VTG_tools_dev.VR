params["_path", ["_set", false]];

private _tree = (VTG_equipUI#1);
private _attachLbl = (" + " + "Attachments");

if (_set) exitWith {
	_tree tvSetText [
		_path, 
		((_tree tvText _path) + _attachLbl)
	];
};

private _text = _tree tvText _path;
private _attachPos = _text find _attachLbl;
private _name = _text select [0, _attachPos];

_tree tvSetText [_path, _name];