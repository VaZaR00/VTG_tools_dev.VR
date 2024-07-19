private _name = param[0];
private _dataMap = call EMM_fnc_getAllModulesFromStorage;

if (_dataMap isEqualTo false) exitWith { _dataMap; }; //return false

private _data = _dataMap get _name;
_data;