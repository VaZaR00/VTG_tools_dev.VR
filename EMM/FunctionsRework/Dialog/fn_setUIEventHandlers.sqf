params["_display"];

(_display displayCtrl 1598) ctrlSetEventHandler ['KeyUp', '[_this, EMM_fnc_loadArsenalItems, 0.5] call EMM_fnc_onSearchKeyUp'];
(_display displayCtrl 9568) ctrlSetEventHandler ['KeyUp', '[_this, EMM_fnc_loadModulesTree, 0.3] call EMM_fnc_onSearchKeyUp'];

(_display displayCtrl 1500) ctrlSetEventHandler ['onTreeSelChanged', "[] call EMM_fnc_onTreeSelect"];
(_display displayCtrl 1500) ctrlSetEventHandler ['onTreeDblClick', "_this call EMM_fnc_editWeapAttach"];

(_display displayCtrl 1661) ctrlSetEventHandler ['onButtonClick', "call EMM_fnc_openEditTargetsMenu"];
//(_display displayCtrl 6355) ctrlSetEventHandler ['onLBSelChanged', "call EMM_fnc_loadArsenalItems"];

