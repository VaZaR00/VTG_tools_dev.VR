if (EMM_var_BLOCK_BROWSER_OPERATIONS) exitWith {["Operation cannot be performed while Search active!", 1] call EMM_fnc_message};

params["_tree", "_startPath", "_destinationPath"];

if ((_tree tvData _destinationPath) in ["%EMM_MODULE%"]) exitWith {
	["Can't move item there!", 1] call EMM_fnc_message;
};

// private _currentModule = "";

private _treeMap = [EMM_equipUI#5] call EMM_fnc_treeMapper;
private _nested = _treeMap select {
	private _path = +(_x#0);
	_path resize (count _startPath);
	_path isEqualTo _startPath;
};

_nested = _nested apply {
	// if ((_x#0) isEqualTo EMM_Current_Module_path) then {
	// 	_currentModule = (_x#2);
	// };
	(_x#0) deleteAt (count (_x#0) - 1);
	(_x#0) deleteRange [0, count _startPath];
	_x
};

{
	private _path = _x#0;
	_path insert [0, _destinationPath];

	private _pic = switch ((_x#1)) do {
		case "%EMM_FOLDER%": {
			EMM_var_pic_FOLDER;
		};
		case "%EMM_MODULE%": {
			EMM_var_pic_MODULE;
		};
		default {""};
	};

	private _newPath = [
		[
			(_x#2), 
			(_x#4), 
			_pic, 
			(_x#1), 
			(_x#3)
		], 
		_tree, 
		_path
	] call EMM_fnc_addItem;

	if (_forEachIndex == 0) then {
		_tree tvSetCurSel _newPath;
		_destinationPath = _newPath;
	};
} forEach _nested;

[_tree, _startPath] call EMM_fnc_deleteItem;

call EMM_fnc_updateBrowser;