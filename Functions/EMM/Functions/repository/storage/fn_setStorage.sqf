params["_dataMap"];

if (EMM_DEV_STATE) then {
	uiNamespace setVariable ["EMM_EQUIP_STORAGE", _dataMap];
} else {
	set3DENMissionAttributes [["EMM_attributes", "EMM_MODULES_STORAGE", str _dataMap]];
};


