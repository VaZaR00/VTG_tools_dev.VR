params[["_keys", false], ["_nameAndType", false], ["_name", ""]];

private _hashMap = uiNamespace getVariable ["EMM_EQUIP_STORAGE", createHashMap];
//private _hashMap = "EMM_attributes" get3DENMissionAttribute "EMM_MODULES_STORAGE";

if (count _hashMap == 0) exitWith {createHashMap}; //return

private _data = +_hashMap;

if (_keys) exitWith {keys _data}; //return

if (_nameAndType) then {
	_data apply { _y deleteAt 1 };
}; 

if (_name != "") exitWith {
	_data get _name;
};

_data; //return

