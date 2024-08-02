params[["_module", EMM_Current_Module]];

private _nameCtrl = EMM_equipUI#6; //Name input field
private _targetsCtrl = EMM_equipUI#7;
private _invTreeCtrl = EMM_equipUI#1; //Modules items tree
private _moduleData = [false, false, false, _module] call EMM_fnc_getModulesStorage;

private _targets = (_moduleData)#0;
private _items = (_moduleData)#1;

_nameCtrl ctrlSetText _module;

_index = 0;

for "_i" from 0 to (lbSize _targetsCtrl) do {
	if (count _targets == 1) then {
		if ((_targets#0) in (_targetsCtrl lbData _i)) exitWith {
			_index = _i;
		};
	}else{
		if ((_targetsCtrl lbData _i) == "edit") exitWith {
			_index = _i;
		};
	};
};

_targetsCtrl lbSetCurSel _index;

[_items] call EMM_fnc_loadModuleItems;

call EMM_fnc_failedToLoadReport; //check if there any problems

EMM_moduleTargets = _targets;