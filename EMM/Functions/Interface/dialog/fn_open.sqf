//1 - create display
EMM_DEV_STATE = true;

disableSerialization;
private _display = (findDisplay 313) createDisplay 'EMM_EquipmentModulesManager';
waitUntil {(!isNull (uiNamespace getVariable ['EMM_EquipmentModulesManager', displayNull]))};

//2 - get displays controls

EMM_equipUI = call EMM_fnc_getUIelements;

waitUntil {!(isNil 'EMM_equipUI')};

//load manager user settings
call EMM_fnc_loadUserSettings;

call EMM_fnc_loadTargetsCombo; //load combo of modules target units

(EMM_equipUI#10) ctrlShow false; //hide weapon attachments tree
(EMM_equipUI#11) ctrlShow false; //hide weapon attachments tree Close btn
(EMM_equipUI#13) ctrlShow false; //hide attachments btn
(EMM_equipUI#14) ctrlShow false; //hide edit targets btn
//(EMM_equipUI#16) ctrlShow false; 

//3 - load modules

EMM_Current_Module = "none";
EMM_Current_module_path = [-1];

call EMM_fnc_loadModulesTree;
call EMM_fnc_modulesAmount;
call EMM_fnc_loadModuleTabs;

//4 - load items cache for arsenal
private _EMM_itemCache = parsingNamespace getVariable ["EMM_itemCache", nil];
if (isNil "_EMM_itemCache") then {
	_EMM_itemCache = call EMM_fnc_getAllItems;
	parsingNamespace setVariable ["EMM_itemCache", _EMM_itemCache];
};

waitUntil {!(isNil '_EMM_itemCache')};

//load arsenal
////[] spawn EMM_fnc_loadArsenal;
[_display] call EMM_fnc_setUIEventHandlers;

call EMM_fnc_loadArsenalCategories;

//[_display] call EMM_fnc_loadModuleInventory;


//(_display displayCtrl 1501) ctrlSetEventHandler ['onTreeSelChanged', '_this call EMM_fnc_treeSelChanged'];
