params["_unit"];

private _defaultName = _unit getVariable ["VTG_fnc_unitDefaultName", nil];
if (isNil "_defaultName") then {
	_unit set3DENAttribute ["description", ""];
} else {
	_unit set3DENAttribute ["description", _defaultName];
};
