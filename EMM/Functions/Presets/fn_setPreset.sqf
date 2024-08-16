params["_name"];

if (EMM_DEV_STATE) then {
	parsingNamespace setVariable ["EMM_var_MISSION_PRESET", _name];
} else {
	"EMM_attributes" set3DENMissionAttribute ["EMM_att_MISSION_PRESET", _name];
};

EMM_var_MISSION_PRESET_mis = _name;

if (_name == "") then {_name = "*Mission preset*"};
(EMM_equipUI#20) ctrlSetText _name;