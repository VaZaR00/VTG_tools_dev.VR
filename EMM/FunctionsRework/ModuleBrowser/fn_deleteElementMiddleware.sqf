params["_type"];

private _tree = EMM_equipUI#5;
private _path = tvCurSel _tree;

if (_path isEqualTo []) exitWith {
	["Nothing selected!", 1] call EMM_fnc_message;
};

private _text = "";
private _title = "";

switch (_type) do {
	case "Folder": {
		_text = "Are you sure you want to delete the folder? \n
	It will delete all modules in it!";
	    _title = "Delete folder";
	};
	case "Module": {
		_text = "Are you sure you want to delete the Module?";
	    _title = "Delete module";
	};
};

[
	_text,
	_title,
	[
		"Yes",
		{call EMM_fnc_deleteElement}
	],
	[
		"No",
		{}
	],
	"\A3\ui_f\data\map\markers\handdrawn\warning_CA.paa",
	findDisplay 313
] call BIS_fnc_3DENShowMessage;