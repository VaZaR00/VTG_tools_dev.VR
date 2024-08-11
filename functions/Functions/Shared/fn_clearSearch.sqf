params["_type"];

private _searchControl = switch (_type) do {
	case 0: { [] call EMM_fnc_loadModuleBrowser; EMM_equipUI#18 };
	case 1: { [] call EMM_fnc_loadArsenalItems; EMM_equipUI#2 };
};

_searchControl ctrlSetText "";