params[["_display", displayNull]];
disableSerialization;
//private _target = _display getVariable ['EIM_Target', objNull];
private _tree = _display displayCtrl 1500;
tvClear _tree;

//private _inventory = [_target] call EIM_fnc_getVehicleInventory;

_tree tvAdd [[], "General"];
_tree tvAdd [[], "To Uniform"];
_tree tvAdd [[], "To Vest"];
_tree tvAdd [[], "To Backpack"];
/*
{
	// getWeaponCargo
	private _path = [0, _forEachIndex];
	private _classname = _x;
	private _cfg = configFile >> 'CfgWeapons' >> _classname;
	private _amount = ((_inventory select 0) select 1) select _forEachIndex;
	_tree tvAdd [[0], format ['%1 x %2', _amount, getText (_cfg >> 'displayName')]];
	_tree tvSetData [_path, _classname];
	_tree tvSetValue [_path, _amount];
	_tree tvSetPicture [_path, getText (_cfg >> 'picture')];
} forEach ((_inventory select 0) select 0);

{
	// getMagazineCargo
	private _path = [1, _forEachIndex];
	private _classname = _x;
	private _cfg = configFile >> 'CfgMagazines' >> _classname;
	private _amount = ((_inventory select 1) select 1) select _forEachIndex;
	_tree tvAdd [[1], format ['%1 x %2', _amount, getText (_cfg >> 'displayName')]];
	_tree tvSetData [_path, _classname];
	_tree tvSetValue [_path, _amount];
	_tree tvSetPicture [_path, getText (_cfg >> 'picture')];
} forEach ((_inventory select 1) select 0);

{
	// getItemCargo
	private _path = [2, _forEachIndex];
	private _classname = _x;
	private _cfg = configFile >> 'CfgWeapons' >> _classname;
	private _amount = ((_inventory select 2) select 1) select _forEachIndex;
	_tree tvAdd [[2], format ['%1 x %2', _amount, getText (_cfg >> 'displayName')]];
	_tree tvSetData [_path, _classname];
	_tree tvSetValue [_path, _amount];
	_tree tvSetPicture [_path, getText (_cfg >> 'picture')];
} forEach ((_inventory select 2) select 0);

{
	// getBackpackCargo
	private _path = [3, _forEachIndex];
	private _classname = _x;
	private _cfg = configFile >> 'CfgVehicles' >> _classname;
	private _amount = ((_inventory select 3) select 1) select _forEachIndex;
	_tree tvAdd [[3], format ['%1 x %2', _amount, getText (_cfg >> 'displayName')]];
	_tree tvSetData [_path, _classname];
	_tree tvSetValue [_path, _amount];
	_tree tvSetPicture [_path, getText (_cfg >> 'picture')];
} forEach ((_inventory select 3) select 0);

[_target] call EIM_fnc_setVehicleLoad;
*/