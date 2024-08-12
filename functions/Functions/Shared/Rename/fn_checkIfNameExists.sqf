params["_newName"];

private _allNames = [];

switch (EMM_var_temp_RENAME_EL_TYPE) do {
	case "Folder": {
		_allNames = ([] call EMM_fnc_getFolders) select { (_x#1) == '%EMM_FOLDER%' };
		_allNames = _allNames apply {_x#2};
	};
	case "Preset": {
		_allNames = keys (call EMM_fnc_getPresetsStorage);
	};
	default: {
		_allNames = ([] call EMM_fnc_getFolders) select { (_x#1) == '%EMM_MODULE%' };
		_allNames = _allNames apply {_x#2};
	};
};

private _allNames = [] call EMM_fnc_getFolders;
_allNames = _allNames select { (_x#1) == '%EMM_MODULE%' };

EMM_var_temp_RENAME_EL_TYPE = nil;

if (_newName in _allNames) then { true } else { false }