//1 - create display

disableSerialization;
(findDisplay 313) createDisplay 'EquipmentModulesManager';

waitUntil {(!isNull (uiNamespace getVariable ['EquipmentModulesManager', displayNull]))};

//2 - get displays controls

VTG_equipUI = call VTG_fnc_getUIelements;

waitUntil {!(isNil 'VTG_equipUI')};

call VTG_fnc_loadTargetsCombo; //load combo of modules target units

(VTG_equipUI#10) ctrlShow false; //hide weapon attachments tree
(VTG_equipUI#11) ctrlShow false; //hide weapon attachments tree Close btn
(VTG_equipUI#13) ctrlShow false; //hide attachments btn
(VTG_equipUI#14) ctrlShow false; //hide edit targets btn

//3 - load modules

VTG_Current_Module = "none";
VTG_Current_module_path = [-1];

//expand tree chkbox
VTG_expandInvChkbox = profileNamespace getVariable ["VTG_expandInvChkbox_prof", true];
(VTG_equipUI#16) cbSetChecked VTG_expandInvChkbox;

call VTG_fnc_loadModulesTree;
call VTG_fnc_modulesAmount;


//4 - load items cache for arsenal

if (isNil 'VTG_itemCache') then {
	VTG_itemCache = call VTG_fnc_getAllItems;
};

waitUntil {!(isNil 'VTG_itemCache')};

//load arsenal
[] spawn VTG_fnc_loadArsenal;

//[_display] call VTG_fnc_loadModuleInventory;

private _display = uiNamespace getVariable ['EquipmentModulesManager', displayNull];

(_display displayCtrl 1598) ctrlSetEventHandler ['KeyUp', '_this call VTG_fnc_onSearchKeyUp'];
//(_display displayCtrl 1501) ctrlSetEventHandler ['onTreeSelChanged', '_this call VTG_fnc_treeSelChanged'];
