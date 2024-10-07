#include "..\..\..\defines.hpp";

params["_targets", ["_type", (ISNIL(EMM_Current_Module_type, 0))]];

[_type] call EMM_fnc_loadTargetsCombo;

private _targetsCtrl = EMM_equipUI#7;

private _index = 0;

for "_i" from 0 to (lbSize _targetsCtrl) do {
	if (count _targets < 2) then {
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