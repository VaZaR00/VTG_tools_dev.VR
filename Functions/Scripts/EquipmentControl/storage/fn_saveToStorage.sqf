private _name = param[0];
private _moduleType = param[1];
private _isRandom = param[2];

private _moduleItemsList = call VTG_fnc_getCurrentModuleList;
if (_moduleItemsList isEqualTo false) exitWith {
	//error
};

private _dataMap = call VTG_fnc_getAllModulesFromStorage; //temp
if (_dataMap isEqualTo false) exitWith {  }; //error

if (_isRandom) then {
	_moduleName = "R" + "$$" + _name;
}else{
	_moduleName = _moduleType + "$$" + _name;
};

_dataMap set [_moduleName, _moduleItemsList];

missionNamespace setVariable ["VTG_fnc_EQUIP_STORAGE", _dataMap]; //temp
