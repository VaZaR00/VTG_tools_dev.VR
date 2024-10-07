#include "..\..\defines.hpp";

EMM_DEV_STATE = false;

startLoadingScreen ["Opening Equipment Modules Manager..."];

disableSerialization;
SPWN_N_WAIT({EMM_var_disp_MODULE_MANAGER = CR_DISP(313, 'EMM_EquipmentModulesManager')});

_thisScript spawn {
	waitUntil { (isNil "EMM_var_disp_MODULE_MANAGER") || (isNull _this) };
	terminate _this;
};

//vars
EMM_Current_Module = "%none%";
EMM_Current_module_path = [];
EMM_nested_currnetParentPath = [];
EMM_var_BLOCK_BROWSER_OPERATIONS = false;

EMM_var_Inv_Tree_Categories = ["%EMM_CATEGORY%", "%EMM_ATTACHMENT_CATEGORY%"];

EMM_var_Nesting_Categories = ["unif", "vest", "backpack", "module"];


[] call EMM_fnc_getUIelements;
[] call EMM_fnc_setUIEventHandlers;
[] call EMM_fnc_loadUserSettings;
[] call EMM_fnc_initPreset;
[] call EMM_fnc_checkForHiddenModules;
[] call EMM_fnc_loadTargetPresets;
[] call EMM_fnc_modulesAmount;
[] call EMM_fnc_loadModuleTabs;
[] call EMM_fnc_loadModuleBrowser;
// SPWN_N_WAIT(EMM_fnc_getUIelements);
// SPWN_N_WAIT(EMM_fnc_setUIEventHandlers);
// SPWN_N_WAIT(EMM_fnc_loadUserSettings); //load manager user settings
// SPWN_N_WAIT(EMM_fnc_initPreset);
// SPWN_N_WAIT(EMM_fnc_checkForHiddenModules);
// SPWN_N_WAIT(EMM_fnc_loadTargetsCombo); //load combo of modules target units
// SPWN_N_WAIT(EMM_fnc_modulesAmount);
// SPWN_N_WAIT(EMM_fnc_loadModuleTabs);
// SPWN_N_WAIT(EMM_fnc_loadModuleBrowser);

//autosave
[] spawn {
	SPWN_HNDL(EMM_autosave_hndl);
	uiSleep 180;
	while {!(isNil 'EMM_equipUI')} do {
		call EMM_fnc_saveAllData;
		uiSleep 180;
	};
};

(EMM_equipUI#14) ctrlShow false; //hide edit targets btn
[false] call EMM_fnc_setNestParent;


EMM_itemsCache_scheme = [
	["Uniforms", []],          			// 0
	["Vests", []],             			// 1
	["Helmets", []],           			// 2
	["Backpacks", []],					// 3
	["Magazines", []],         			// 4
	["Rifles", []],          			// 5
	["Pistols", []],          			// 6
	["Launchers", []],        			// 7
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

private _EMM_itemCache = +(parsingNamespace getVariable ["EMM_itemsCache", nil]);
if (isNil "_EMM_itemCache") then {
	// SPWN_N_WAIT(EMM_fnc_getAllItems);
	[] call EMM_fnc_getAllItems;
};

//load arsenal
// SPWN_N_WAIT(EMM_fnc_loadArsenalCategories);
[] call EMM_fnc_loadArsenalCategories;

endLoadingScreen;
