params["_display", ["_one", false]];

EMM_var_temp_CLEAR_PRESET_IF_ONE = _one;

EMM_f_clear_current_preset = {
	[EMM_equipUI#0] call EMM_fnc_close;
	call EMM_fnc_wipePreset;
	[nil] call EMM_fnc_setFoldersStorage;
	[nil] call EMM_fnc_setModulesStorage;
	["PRESET DATA DELETED"] call EMM_fnc_message;
	[] spawn EMM_fnc_openModulesManager;
};
EMM_f_clear_all_presets = {
	call EMM_fnc_wipePreset;
	[nil] call EMM_fnc_setPresetsStorage;
	[] call EMM_fnc_loadPresetsList;
	["ALL DATA DELETED"] call EMM_fnc_message;
	[""] call EMM_fnc_setPreset;
};

EMM_f_second_warning = {
	[
		"Are you REALY sure you want to delete ALL data?",
		"Delete All data 0_o ?",
		[
			"Absolutely!",
			{
				call EMM_f_clear_all_presets;
			}
		],
		[
			"Hell nuh",
			{}
		],
		"a3\ui_f\data\map\markers\military\warning_ca.paa",
		EMM_clear_all_first_warning
	] call BIS_fnc_3DENShowMessage;
};

EMM_clear_all_first_warning = [
	"Are you sure you want to delete All data?",
	"Delete All data",
	[
		"Yes",
		{ if (EMM_var_temp_CLEAR_PRESET_IF_ONE) then {call EMM_f_clear_current_preset} else {call EMM_f_second_warning}; EMM_var_temp_CLEAR_PRESET_IF_ONE = nil; }
	],
	[
		"No",
		{EMM_var_temp_CLEAR_PRESET_IF_ONE = nil;}
	],
	"a3\ui_f\data\map\markers\military\warning_ca.paa",
	_display
] call BIS_fnc_3DENShowMessage;