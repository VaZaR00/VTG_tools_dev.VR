params["_el"];

private _tree = EMM_equipUI#5;
private _path = tvCurSel _tree;

private _type = "";
private _image = "";
private _name = "New" + _el;

switch (_el) do {
	case "Folder": {
		_type = "%EMM_FOLDER%";
		_image = "a3\3den\data\cfg3den\layer\icon_ca.paa";
	};
	case "Module": {
		_type = "%EMM_MODULE%";
	};
};

if ((_tree tvData _path) == "%EMM_MODULE%") then {
	_path deleteAt (count _path - 1);
};

[[_name, _name, _image, _type, 0], _tree, _path] call EMM_fnc_addItem;