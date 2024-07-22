//1 - create display

disableSerialization;
(findDisplay 313) createDisplay 'EquipmentModulesManager';
waitUntil {(!isNull (uiNamespace getVariable ['EquipmentModulesManager', displayNull]))};

//2 - get displays controls

EMM_equipUI = call EMM_fnc_getUIelements;

waitUntil {!(isNil 'EMM_equipUI')};

call EMM_fnc_loadTargetsCombo; //load combo of modules target units

(EMM_equipUI#10) ctrlShow false; //hide weapon attachments tree
(EMM_equipUI#11) ctrlShow false; //hide weapon attachments tree Close btn
(EMM_equipUI#13) ctrlShow false; //hide attachments btn
(EMM_equipUI#14) ctrlShow false; //hide edit targets btn

//3 - load modules

EMM_Current_Module = "none";
EMM_Current_module_path = [-1];

//expand tree chkbox
EMM_expandInvChkbox = profileNamespace getVariable ["EMM_expandInvChkbox_prof", true];
(EMM_equipUI#16) cbSetChecked EMM_expandInvChkbox;

call EMM_fnc_loadModulesTree;
call EMM_fnc_modulesAmount;


//4 - load items cache for arsenal
private _EMM_itemCache = parsingNamespace getVariable ["EMM_itemCache", nil];
if (isNil "_EMM_itemCache") then {
	_EMM_itemCache = call EMM_fnc_getAllItems;
	parsingNamespace setVariable ["EMM_itemCache", _EMM_itemCache];
};

waitUntil {!(isNil '_EMM_itemCache')};

//load arsenal
[] spawn EMM_fnc_loadArsenal;

//[_display] call EMM_fnc_loadModuleInventory;

private _display = uiNamespace getVariable ['EquipmentModulesManager', displayNull];

(_display displayCtrl 1598) ctrlSetEventHandler ['KeyUp', '_this call EMM_fnc_onSearchKeyUp'];
//(_display displayCtrl 1501) ctrlSetEventHandler ['onTreeSelChanged', '_this call EMM_fnc_treeSelChanged'];
