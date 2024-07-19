params["_class", "_function", "_amount"];

private _moduleItemsList = call EMM_fnc_getCurrentModuleList;
if (_moduleItemsList isEqualTo false) exitWith {
	//error
};

_moduleItemsList pushBack [_class, _function, _amount];

missionNamespace setVariable [_module, _moduleItemsList];