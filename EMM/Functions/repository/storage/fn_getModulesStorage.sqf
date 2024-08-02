params[["_keys", false], ["_nameAndType", false], ["_folders", false], ["_name", ""]];

private _data = if (EMM_DEV_STATE) then {
	+(uiNamespace getVariable ["EMM_EQUIP_STORAGE", createHashMap]);
} else {
	private _hashMap = "EMM_attributes" get3DENMissionAttribute "EMM_MODULES_STORAGE";

	if !(_hashMap isEqualType "") exitWith {createHashMap}; //return
	if (count _hashMap == 0) exitWith {createHashMap}; //return

	_hashMap = call compile _hashMap;
	_hashMap = createHashMapFromArray _hashMap;

	+_hashMap;
};

if (count _data == 0) exitWith {createHashMap}; //return

if (_keys) exitWith {keys _data}; //return

if (!_folders) then {
	_data apply { if ((count _y) > 2) then {_y deleteAt 2} };
};

if (_nameAndType) then {
	_data apply { _y deleteAt 1 };
}; 

if (_name != "") exitWith {
	_data getOrDefault [_name, false];
};

_data; //return

