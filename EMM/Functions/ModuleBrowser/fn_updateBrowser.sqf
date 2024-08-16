private _tree = EMM_equipUI#5;

//deselect previous before sorting
[_tree, [], false] call EMM_fnc_setOpenedModuleColor; 

[_tree] call EMM_fnc_sortItems;

private _treeMap = [_tree] call EMM_fnc_treeMapper;

private _moduleExists = _treeMap findIf {(_x#2) == EMM_Current_Module};

if (_moduleExists == -1) then {
	call EMM_fnc_resetModule;
	[false] call EMM_fnc_hideStartMsg;
} else {
	if (EMM_Current_Module != "%none%") then {
		_path = _treeMap#_moduleExists#0;
		
		//turn off save message
		private _msgOnTemp = EMM_MODULE_SAVE_MASSAGE_ON;
		EMM_MODULE_SAVE_MASSAGE_ON = false;
		[_tree, _path] call EMM_fnc_openModule;
		EMM_MODULE_SAVE_MASSAGE_ON = _msgOnTemp;
	};
};

_treeMap apply {
	_x resize 4;
	(_x#0) deleteAt (count (_x#0) - 1);
};

[_treeMap] call EMM_fnc_setFoldersStorage;