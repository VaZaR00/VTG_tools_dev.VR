params["_unit"];

private _defaultName = _unit getVariable ["VTG_fnc_unitDefaultName", nil];

if (isNil "_defaultName") then {
	_defaultName = "";
};

_unit set3DENAttribute ["description", _defaultName];

_unit setVariable ["VTG_fnc_unitDefaultName", nil];