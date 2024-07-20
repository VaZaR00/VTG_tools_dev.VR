params["_name"];

private _type = ([false, true, _name] call EMM_fnc_getModulesStorage)#0#0;


if (_type == "comp") then {
	[] spawn EMM_fnc_loadArsenal;
};