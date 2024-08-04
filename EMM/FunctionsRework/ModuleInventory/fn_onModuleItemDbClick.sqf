params["_module", "_moduleSel"];
private _currentModuleItem = _module tvTooltip _moduleSel;

EMM_Arsenal_filter = {true};

EMM_attachs_currentWeapon_path = [];
if (
	([_currentModuleItem] call EMM_fnc_isWeapon) &&
	("Access" in EMM_currentArsenalCategory)
) then {
	EMM_attachs_currentWeapon_path = _moduleSel;
	EMM_Arsenal_filter = {params["_class"]; _currentModuleItem canAdd _class};
};

[] call EMM_fnc_loadArsenalItems;