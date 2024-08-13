//1 - create display
EMM_DEV_STATE = true;

disableSerialization;
private _display = (findDisplay 313) createDisplay 'EMM_EquipmentModulesManager';
waitUntil {(!isNull (uiNamespace getVariable ['EMM_EquipmentModulesManager', displayNull]))};
EMM_var_disp_MODULE_MANAGER = _display;
//get preset

//2 - get displays controls
//[_display, false] call EMM_fnc_hideStartMsg;

EMM_equipUI = call EMM_fnc_getUIelements;

waitUntil {!(isNil 'EMM_equipUI')};

//load manager user settings
call EMM_fnc_loadUserSettings;

call EMM_fnc_initPreset;

call EMM_fnc_loadTargetsCombo; //load combo of modules target units

(EMM_equipUI#14) ctrlShow false; //hide edit targets btn
//(EMM_equipUI#16) ctrlShow false; 

//3 - load modules

EMM_Current_Module = "none";
EMM_Current_module_path = [];
EMM_var_BLOCK_BROWSER_OPERATIONS = false;
//images
EMM_var_pic_MODULE = "a3\3den\data\cfg3den\history\changeattributes_ca.paa";
EMM_var_pic_FOLDER = "a3\3den\data\cfg3den\layer\icon_ca.paa";
EMM_var_pic_NOTHING = "a3\3den\data\cfgwaypoints\dismiss_ca.paa";

EMM_var_Inv_Tree_Categories = ["%EMM_CATEGORY%", "%EMM_ATTACHMENT_CATEGORY%"];

EMM_var_Nesting_Categories = ["unif", "vest", "backpack", "module"];

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

[_display] call EMM_fnc_setUIEventHandlers;

//load arsenal
call EMM_fnc_loadArsenalCategories;

[false] call EMM_fnc_setNestParent;

