private _sel = lnbCurSelRow EMM_PM_listBox;
private _name = EMM_PM_listBox lnbText [_sel, 0];

if (_name isEqualTo "") exitWith {
	["Nothing selected!", 1] call EMM_fnc_message;
};

EMM_var_temp_LOAD_PRESET_NAME = _name;

EMM_f_temp_LOAD_PRESET = {
	call EMM_fnc_wipePreset;

	[EMM_var_temp_LOAD_PRESET_NAME] call EMM_fnc_setPreset;

	["Preset loaded"] call EMM_fnc_message;

	[EMM_PM_listBox] call EMM_fnc_close;
	
	EMM_var_temp_LOAD_PRESET_NAME = nil;
};

if ((EMM_var_MISSION_PRESET_mis == "") && {count ([] call EMM_fnc_getModules) != 0}) exitWith {
	[
		format['You have unsaved preset. Are you sure you want load other preset?%1ALL data will be lost! %1(Better save it. Click "New")', endl],
		"Load preset",
		[
			"Yes",
			{ call EMM_f_temp_LOAD_PRESET; EMM_f_temp_LOAD_PRESET = nil; }
		],
		[
			"No",
			{EMM_f_temp_LOAD_PRESET = nil; EMM_var_temp_LOAD_PRESET_NAME = nil;}
		],
		"a3\ui_f\data\map\markers\military\warning_ca.paa",
		EMM_var_disp_PRESET_MANAGER
	] call BIS_fnc_3DENShowMessage;
};

call EMM_f_temp_LOAD_PRESET;
EMM_f_temp_LOAD_PRESET = nil;