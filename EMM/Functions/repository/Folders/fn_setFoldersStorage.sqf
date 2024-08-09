//private _treeMap = [EMM_equipUI#5] call EMM_fnc_treeMapper;
params["_treeMap"];
// private _algorythm = {
// 	params["_item"];
// 	_sum = "";
// 	{ _sum + (str _x); _x } forEach (_item#0);
// 	format["%1%2%3", _sum, str (_item#3), (_item#2)]
// };

// _treeMap = [_treeMap, [], {[_x] call _algorythm}] call BIS_fnc_sortBy;

_treeMap apply {
	_x resize 4;
	(_x#0) deleteAt (count (_x#0) - 1);
};
if (EMM_DEV_STATE) then {
	parsingNamespace setVariable ["EMM_MODULES_FOLDERS", _treeMap];
} else {
	set3DENMissionAttributes [["EMM_attributes", "EMM_MODULES_FOLDERS", str _treeMap]];
};

+_treeMap;