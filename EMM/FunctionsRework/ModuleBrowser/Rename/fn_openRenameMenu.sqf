private _tree = EMM_equipUI#5;
private _path = tvCurSel _tree;

if (_path isEqualTo []) exitWith {
	["Nothing selected!", 1] call EMM_fnc_message;
};

private _display = (findDisplay 11549) createDisplay 'EMM_name_input_menu';
