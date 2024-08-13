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
	default {
		_allNames = [0] call EMM_fnc_getModules;
	};
};

_newName in _allNames