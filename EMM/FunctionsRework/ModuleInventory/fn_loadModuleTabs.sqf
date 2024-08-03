private _display = uiNamespace getVariable ['EMM_EquipmentModulesManager', displayNull];

private _tabsGrp = _display displayCtrl 8644;
EMM_moduleTabs = []; //0 - inventory, 1 - uniform, 2 - vest, 3 - backpack

for "_i" from 0 to 3 do {
	private _tab = _display ctrlCreate ["RscTree", 5110 + _i, _tabsGrp];

	_tab ctrlSetPosition [0, 0, 96, 122];
	_tab ctrlSetBackgroundColor [0, 0, 0, 0.5];
	_tab ctrlCommit 0;

	_tab ctrlShow false;

	private _el = [_tab, (_display displayCtrl (3330 + _i)), (_display displayCtrl (3320 + _i))];

	EMM_moduleTabs pushBack _el;
};

[0] call EMM_fnc_setModuleTab;