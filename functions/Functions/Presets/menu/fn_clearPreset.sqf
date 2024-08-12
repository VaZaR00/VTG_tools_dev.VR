EMM_second_warning = {
	[
		"Are you REALY sure you want to delete ALL data?",
		"Delete All data 0_o ?",
		[
			"Absolutely!",
			{
				[EMM_equipUI#0] call EMM_fnc_close;
				call EMM_fnc_wipePreset;
				["ALL DATA DELETED"] call EMM_fnc_message;
				[] spawn EMM_fnc_openModulesManager;
				EMM_clear_all_first_warning = nil;
			}
		],
		[
			"Hell nuh",
			{EMM_clear_all_first_warning = nil;}
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