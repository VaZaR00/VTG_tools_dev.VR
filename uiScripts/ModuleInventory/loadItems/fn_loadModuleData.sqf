params[["_module", VTG_Current_Module]];

private _nameCtrl = VTG_equipUI#6; //Name input field
private _targetsCtrl = VTG_equipUI#7;
private _invTreeCtrl = VTG_equipUI#1; //Modules items tree

private _moduleData = [false, false, _module] call VTG_fnc_getModulesStorage;

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
		if ("edit" in (_targetsCtrl lbData _i)) exitWith {
			_index = _i;
		};
	};
};

_targetsCtrl lbSetCurSel _index;

[_items] call VTG_fnc_loadModuleItems;

VTG_moduleTargets = _targets;