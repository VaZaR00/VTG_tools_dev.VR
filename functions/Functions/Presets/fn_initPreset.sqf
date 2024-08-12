private _preset = "EMM_attributes" get3DENMissionAttribute "EMM_att_MISSION_PRESET";

if (isNil "_preset") exitWith {EMM_var_MISSION_PRESET_mis = ""};

if ((_preset == "") or !(_preset isEqualType "")) exitWith {EMM_var_MISSION_PRESET_mis = ""};

EMM_var_MISSION_PRESET_mis = _preset;