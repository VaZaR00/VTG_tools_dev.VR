private _tree = EMM_equipUI#5;
private _path = tvCurSel _tree;
private _type = _tree tvData _path;

if (_path isEqualTo []) exitWith {
	["Nothing selected!", 1] call EMM_fnc_message;
};

private _text = "";
private _title = "";
EMM_delete_secondFunc = {};

switch (_type) do {
	case "%EMM_FOLDER%": {
		_text = "Are you sure you want to delete the folder? It will delete all modules in it!";
	    _title = "Delete folder";
		EMM_delete_secondFunc = {
			if (call EMM_fnc_checkIfModuleExists) then {
				call EMM_fnc_updateStorage;
				call EMM_fnc_resetModule;
				[nil, false] call EMM_fnc_hideStartMsg;
			};
		};
	};
	case "%EMM_MODULE%": {
		_text = "Are you sure you want to delete the Module?";
	    _title = "Delete module";
		private _name = _tree tvText _path;
		EMM_delete_secondFunc = {[_name] call EMM_fnc_deleteModule};
	};
};

[
	_text,
	_title,
	[
		"Yes",
		{call EMM_fnc_deleteElement; call EMM_delete_secondFunc; EMM_delete_secondFunc = nil;}
	],
	[
		"No",
		{}
	],
	"a3\ui_f\data\map\markers\military\warning_ca.paa",
	findDisplay 11549
] call BIS_fnc_3DENShowMessage;