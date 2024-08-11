//1 - create display
EMM_DEV_STATE = true;

disableSerialization;
private _display = (findDisplay 313) createDisplay 'EMM_EquipmentModulesManager';
waitUntil {(!isNull (uiNamespace getVariable ['EMM_EquipmentModulesManager', displayNull]))};

//2 - get displays controls
//[_display, false] call EMM_fnc_hideStartMsg;

EMM_equipUI = call EMM_fnc_getUIelements;

waitUntil {!(isNil 'EMM_equipUI')};

//load manager user settings
call EMM_fnc_loadUserSettings;

call EMM_fnc_loadTargetsCombo; //load combo of modules target units

(EMM_equipUI#14) ctrlShow false; //hide edit targets btn
//(EMM_equipUI#16) ctrlShow false; 

//3 - load modules

EMM_Current_Module = "none";
EMM_Current_module_path = [];
EMM_var_BLOCK_BROWSER_OPERATIONS = false;

call EMM_fnc_modulesAmount;
call EMM_fnc_loadModuleTabs;
[] call EMM_fnc_loadModuleBrowser;

//4 - load items cache for arsenal

EMM_itemsCache_scheme = [
	["Uniforms", []],          			// 0
	["Vests", []],             			// 1
	["Helmets", []],           			// 2
	["Backpacks", []],					// 3
	["Rifles", []],          			// 4
	["Pistols", []],          			// 5
	["Launchers", []],        			// 6
	["Magazines", []],         			// 7
	["Binoculars", []],        			// 8
	["Items", []],             			// 9
	["Devices", []],           			// 10
	["Accessories/Sights", []],			// 11
	["Accessories/Pointers", []],		// 12
	["Accessories/Muzzles", []],		// 13
	["Accessories/Bipods", []],			// 14
	["Goggles", []],           			// 15
	["NVGoggles", []],         			// 16
	["Modules", []]          			// 17
];

private _EMM_itemCache = +(parsingNamespace getVariable ["EMM_itemCache", nil]);
if (isNil "_EMM_itemCache") then {
	_EMM_itemCache = createHashMapFromArray (call EMM_fnc_getAllItems);
	parsingNamespace setVariable ["EMM_itemCache", _EMM_itemCache];
};

waitUntil {!(isNil '_EMM_itemCache')};

//load arsenal
////[] spawn EMM_fnc_loadArsenal;
[_display] call EMM_fnc_setUIEventHandlers;

call EMM_fnc_loadArsenalCategories;

[false] call EMM_fnc_setNestParent;

//[_display] call EMM_fnc_loadModuleInventory;

//(_display displayCtrl 1501) ctrlSetEventHandler ['onTreeSelChanged', '_this call EMM_fnc_treeSelChanged'];
