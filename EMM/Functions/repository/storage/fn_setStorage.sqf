params["_dataMap"];

if (EMM_DEV_STATE) then {
	parsingNamespace setVariable ["EMM_EQUIP_STORAGE", _dataMap];
} else {
	set3DENMissionAttributes [["EMM_attributes", "EMM_EQUIP_STORAGE", str _dataMap]];
};

call EMM_fnc_modulesAmount;