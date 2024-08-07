private _display = uiNamespace getVariable ['EMM_EquipmentModulesManager', displayNull];

private _treeTabsGrp = _display displayCtrl 8644;
private _treeTabsBtnsGrp = _display displayCtrl 3568;
private _const = 0.005;

EMM_moduleTabs = []; //0 - inventory, 1 - uniform, 2 - vest, 3 - backpack

private _xTabBtnOffset = (-1 * _const);

private _setTabTree = {
	params["_treeTab"];

	_treeTab ctrlSetPosition [0, 0, 96.5 * _const, 122 * _const];
	_treeTab ctrlSetBackgroundColor [0, 0, 0, 0.5];
	_treeTab ctrlCommit 0;

	_treeTab ctrlShow false;

	_treeTab ctrlSetEventHandler ['TreeDblClick', '_this call EMM_fnc_onModuleItemDbClick;'];
	_treeTab ctrlSetEventHandler ['TreeSelChanged', '_this call EMM_fnc_updateAddFunc;'];
	_treeTab ctrlAddEventHandler  ["KeyUp", {
		params ["_control", "_key", "_shift", "_ctrl", "_alt"];
		[_control, _key, _ctrl, 1] call EMM_fnc_copyClassname;
		false
	}];
};

// private _setTabBg = {
// 	params["_tabBg"];
	
// 	private _size = 10 * _const;
// 	_tabBg ctrlSetPosition [_xTabBtnOffset, 0, _size, _size];
// 	_tabBg ctrlSetBackgroundColor [0, 0, 0, 0.3];
// 	_tabBg ctrlCommit 0;
// };

// private _setTabBtn = {
// 	params["_tabBtn", "_index", "_icon"];

// 	private _size = 10 * _const;
// 	_tabBtn ctrlSetPosition [_xTabBtnOffset, 0, _size, _size];
// 	//_tabBtn ctrlSetBackgroundColor [0, 0, 0, 0.5];
// 	_tabBtn ctrlSetText _icon;
// 	_tabBtn ctrlCommit 0;

// 	_tabBtn ctrlSetEventHandler ['ButtonClick', format["[%1] call EMM_fnc_setModuleTab", _index]];
// };

// private _setTabItemCount = {
// 	params["_tabCount"];
	
// 	private _size = 10 * _const;
// 	_tabCount ctrlSetPosition [_xTabBtnOffset, 0, _size, _size];
// 	//_tabCount ctrlSetBackgroundColor [0, 0, 0, 0];
// 	//_tabCount ctrlSetFontHeight (6 * _const);
// 	_tabCount ctrlCommit 0;

// 	_tabCount ctrlSetText "0";
// };


for "_i" from 0 to 3 do {
	private _treeTab = _display ctrlCreate ["RscTree", 5110 + _i, _treeTabsGrp];
	private _tabBtn = _display displayCtrl (3330 + _i);
	private _tabBg = _display displayCtrl (3320 + _i);
	//private _tabCount = _display displayCtrl (3340 + _i);
	// private _tabBtn = _display ctrlCreate ["RscActivePicture", 3330 + _i, _treeTabsBtnsGrp];
	// private _tabBg = _display ctrlCreate ["Rsctext", 3320 + _i, _treeTabsBtnsGrp];
	// private _tabCount = _display ctrlCreate ["Module_Lbl", 3340 + _i, _treeTabsBtnsGrp];

	// private _iconNum = switch (_i) do {
	// 	case 0: { 0 };
	// 	case 1: { 8 };
	// 	case 2: { 9 };
	// 	case 3: { 10 };
	// };
	// private _icon = format["\a3\Ui_F_Curator\Data\RscCommon\RscAttributeInventory\filter_%1_ca.paa", _iconNum];

	//_xTabBtnOffset = _xTabBtnOffset + (1 * _const);

	[_treeTab] call _setTabTree;
	// [_tabBtn, _i, _icon] call _setTabBtn;
	// [_tabBg] call _setTabBg;
	// [_tabCount] call _setTabItemCount;

	//_xTabBtnOffset = _xTabBtnOffset + (10 * _const);

	private _el = [_treeTab, _tabBtn, _tabBg];  //, _tabCount];

	EMM_moduleTabs pushBack _el; // _el = [_tab, _tabIconBackground, _tabIcon]
};

[0] call EMM_fnc_setModuleTab;