private _tree = EMM_equipUI#1;

params[["_all", false], ["_selectItem", tvCurSel _tree]];

if (count _selectItem == 0) exitWith {['Nothing selected', 1] call EMM_fnc_message};

private _iterate = {
	params["_path"];

	for "_i" from 0 to (count _path) do {
		_path deleteAt (count _path - 1);

		if ((_tree tvData _path) != "") then {break};

		if ((_tree tvCount _path) == 0) then {
			_tree tvDelete _path;
		};
	};
};

[_selectItem] call EMM_fnc_checkIfRandom; //if the category was a Random and it now has one item its no more random so remove label

if (_all) exitWith {
	_tree tvDelete _selectItem;
	
	[_selectItem] call _iterate;

	[] call EMM_fnc_updateAddFunc;
	[_selectItem, true] call EMM_fnc_checkForAttachLbl;
};

[_selectItem, -1] call EMM_fnc_modifyModuleItem;
[] call EMM_fnc_updateAddFunc;
[_selectItem, true] call EMM_fnc_checkForAttachLbl;