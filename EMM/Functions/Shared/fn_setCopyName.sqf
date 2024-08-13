params["_itemData", "_pos"];
	
private _storage = [] call EMM_fnc_getModules;
if (
	(_storage isEqualTo createHashMap) &&
	(_storage isEqualTo [])
) exitWith {
	_itemData
};

private _startName = (_itemData#_pos);
if !([_startName] call EMM_fnc_checkIfNameExists) exitWith {_itemData};

private _index = 0;
while {_index < 100} do {
	private _add = if (_index < 100) then {format["(%1)", _index]} else {(systemTimeUTC joinString "-")};
	private _name = _startName + _add;

	_index = _index + 1;
	_itemData set [_pos, _name];

	if !([_name] call EMM_fnc_checkIfNameExists) exitWith {_itemData};
};

_itemData