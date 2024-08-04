private _treeMap = [EMM_equipUI#5] call EMM_fnc_treeMapper;

_treeMap apply {
	_x resize 3;
	(_x#0) deleteAt (count (_x#0) - 1);
};

if (EMM_DEV_STATE) then {
	uiNamespace setVariable ["EMM_MODULES_FOLDERS", _treeMap];
} else {
	set3DENMissionAttributes [["EMM_attributes", "EMM_MODULES_FOLDERS", str _treeMap]];
};
