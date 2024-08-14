private _data = "EMM_attributes" get3DENMissionAttribute "EMM_MODULES_STORAGE";

if (isNil "_data") exitWith {[]};
if !(_data isEqualType "") exitWith {createHashMap};

_data;