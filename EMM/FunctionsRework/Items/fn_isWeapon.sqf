params["_class"];

private _type = [_class] call EMM_fnc_getItemTypeFunc;

if (_type == "AW") then {true} else {false} 