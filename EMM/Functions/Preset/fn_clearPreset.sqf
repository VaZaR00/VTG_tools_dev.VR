EMM_wipePreset = {
	[EMM_equipUI#0] call EMM_fnc_close;
	if (EMM_DEV_STATE) then {
		parsingNamespace setVariable ["EMM_EQUIP_STORAGE", nil];
		parsingNamespace setVariable ["EMM_MODULES_FOLDERS", nil];
	} else {
		set3DENMissionAttributes [["EMM_attributes", "EMM_EQUIP_STORAGE", ""]];
		set3DENMissionAttributes [["EMM_attributes", "EMM_MODULES_FOLDERS", ""]];
	};
	["ALL DATA DELETED"] call EMM_fnc_message;
	[] spawn EMM_fnc_open;
};

EMM_second_warning = {
	[
		"Are you REALY sure you want to delete ALL data?",
		"Delete All data 0_o ?",
		[
			"Absolutely!",
			{call EMM_wipePreset; EMM_wipePreset = nil; EMM_clear_all_first_warning = nil;}
		],
		[
			"Hell nuh",
			{EMM_wipePreset = nil; EMM_clear_all_first_warning = nil;}
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
		{call EMM_second_warning; EMM_second_warning = nil; }
	],
	[
		"No",
		{EMM_second_warning = nil;}
	],
	"a3\ui_f\data\map\markers\military\warning_ca.paa",
	findDisplay 11549
] call BIS_fnc_3DENShowMessage;