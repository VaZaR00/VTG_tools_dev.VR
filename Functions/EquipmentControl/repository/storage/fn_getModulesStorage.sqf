params[["_keys", false], ["_nameAndType", false], ["_name", ""]];

private _hashMap = uiNamespace getVariable ["VTG_EQUIP_STORAGE", createHashMap];

if (count _hashMap == 0) exitWith {_hashMap}; //return

private _data = +_hashMap;

if (_keys) exitWith {keys _data}; //return

if (_nameAndType) then {
	_data apply { _y deleteAt 1 };
}; 

if (_name != "") exitWith {
	_data get _name;
};

_data; //return
