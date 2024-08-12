params["_tree", "_treeSel"];
private _currentModuleItem = _tree tvTooltip _treeSel;

private _nestingCategories = EMM_var_Nesting_Categories + ["rifl", "pist", "launch"];

EMM_Arsenal_filter = "true";

if (_treeSel isEqualTo EMM_nested_currnetParentPath) exitWith {
	[false] call EMM_fnc_setNestParent;
};
[false] call EMM_fnc_setNestParent;

private _parentPath = +_treeSel;
_parentPath deleteAt (count _parentPath - 1);

private _parentName = _tree tvText _parentPath;

private _category = _nestingCategories findIf {_x in (toLower _parentName)};
if (_category != -1) then {
	private _script = switch (_category) do {
		case 4: {format["%1 canAdd _this", str _currentModuleItem]};
		default {"true"};
	};

	if (
		((["Access", "Magaz"] findIf {_x in EMM_currentArsenalCategory}) == -1) &&
		{[_currentModuleItem] call EMM_fnc_isWeapon}
	) then {
		(EMM_equipUI#6) lbSetCurSel 11;
	};

	EMM_Arsenal_filter = format["_this call compile %1", str _script];
	[] call EMM_fnc_loadArsenalItems;
	[true, _tree, _treeSel] call EMM_fnc_setNestParent;
	[_tree, _treeSel] spawn {
		sleep 0.1;
		(_this#0) tvExpand (_this#1);
	};
};
