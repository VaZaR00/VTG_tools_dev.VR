private _tree = EMM_equipUI#5;
private _path = tvCurSel _tree;

private _display = (findDisplay 11549);
private _inputField = _display displayCtrl 1400;
private _input = ctrlText _inputField;

if (_input == "") exitWith {
	["Name shouldn't be empty!", 1] call EMM_fnc_message;
};

_tree tvSetText [_path, _input];