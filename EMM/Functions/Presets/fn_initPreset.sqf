private _preset = if (EMM_DEV_STATE) then {
	parsingNamespace getVariable ["EMM_var_MISSION_PRESET", nil];
} else {
	"EMM_attributes" get3DENMissionAttribute "EMM_att_MISSION_PRESET"
};

if (isNil "_preset") exitWith {EMM_var_MISSION_PRESET_mis = ""};

if ((_preset == "") or !(_preset isEqualType "")) exitWith {EMM_var_MISSION_PRESET_mis = ""};

EMM_var_temp_RENAME_EL_TYPE = "Preset";
if !([_preset] call EMM_fnc_checkIfNameExists) exitWith {
	["Cant't load preset", 1] call EMM_fnc_message;
	EMM_var_temp_RENAME_EL_TYPE = nil;
};
EMM_var_temp_RENAME_EL_TYPE = nil;

EMM_var_MISSION_PRESET_mis = _preset;

//[] call EMM_fnc_checkForHiddenModules;

(EMM_equipUI#20) ctrlSetText _preset;