private _data = "EMM_attributes" get3DENMissionAttribute "EMM_BROWSER_STORAGE";

if (isNil "_data") exitWith {[]};
if !(_data isEqualType "") exitWith {[]};

_data;