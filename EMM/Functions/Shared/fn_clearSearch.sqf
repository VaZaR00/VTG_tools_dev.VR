params["_type"];

private _searchControl = switch (_type) do {
	case 0: { [] call EMM_fnc_loadModuleBrowser; EMM_equipUI#18 };
	case 1: { [] call EMM_fnc_loadArsenalItems; EMM_equipUI#2 };
	case 2: { [] call EMM_fnc_loadPresetsList; (findDisplay 12337) displayCtrl 2314 };
};

_searchControl ctrlSetText "";