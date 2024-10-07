params[["_display", EMM_var_disp_MODULE_MANAGER]];

(_display displayCtrl 1598) ctrlSetEventHandler ['KeyUp', '[_this, EMM_fnc_loadArsenalItems, 0.5] call EMM_fnc_onSearchKeyUp'];
// (_display displayCtrl 9568) ctrlSetEventHandler ['KeyUp', '[_this, EMM_fnc_loadModuleBrowser, 0.3] call EMM_fnc_onSearchKeyUp'];

(_display displayCtrl 1500) ctrlSetEventHandler ['TreeDblClick', "_this call EMM_fnc_editWeapAttach"];

(_display displayCtrl 1661) ctrlSetEventHandler ['ButtonClick', "call EMM_fnc_openEditTargetsMenu"];

(EMM_equipUI#5) ctrlAddEventHandler  ["KeyUp", {
	params ["_control", "_key", "_shift", "_ctrl", "_alt"];

	if (_ctrl) then {
		if (_key == 46) then {
			[true] spawn EMM_fnc_export; //copy
		};
		if (_key == 47) then {
			[] call EMM_fnc_import; //paste
		};
	};

	false
}];

// (EMM_equipUI#5) ctrlAddEventHandler  ["KeyUp", {
// 	params ["_control", "_key", "_shift", "_ctrl", "_alt"];
// 	[_control, _key, _ctrl, 2] call EMM_fnc_copyClassname;
// 	false
// }];

EMM_f_DELETE_SELECTION = {private _sel = tvSelection (EMM_var_ActiveModuleTab#1); {[EMM_var_ActiveModuleTab#1, +(_sel#0)] call EMM_fnc_deleteItem} forEach _sel;};

//(_display displayCtrl 6355) ctrlSetEventHandler ['onLBSelChanged', "call EMM_fnc_loadArsenalItems"];

