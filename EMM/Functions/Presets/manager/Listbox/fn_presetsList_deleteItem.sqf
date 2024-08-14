private _sel = lnbCurSelRow EMM_PM_listBox;
private _name = EMM_PM_listBox lnbText [_sel, 0];

if (_name isEqualTo "") exitWith {
	["Nothing selected!", 1] call EMM_fnc_message;
};

private _deletePresetWarning = [
	"Are you sure you want to delete All data?",
	"Delete All data",
	[
		"Yes",
		{EMM_var_temp_DELETE_PRESET_APPROVE = true}
	],
	[
		"No",
		{EMM_var_temp_DELETE_PRESET_APPROVE = false}
	],
	"a3\ui_f\data\map\markers\military\warning_ca.paa",
	EMM_var_disp_PRESET_MANAGER
] call BIS_fnc_3DENShowMessage;

waitUntil { (_deletePresetWarning isEqualTo displayNull) || !(isNil "EMM_var_temp_DELETE_PRESET_APPROVE") };

if (EMM_var_temp_DELETE_PRESET_APPROVE) then {
	EMM_PM_listBox lnbDeleteRow _sel;
	[_name] call EMM_fnc_deletePreset;

	if (EMM_var_MISSION_PRESET_mis != _name) exitWith {};

	call EMM_fnc_wipePreset;
	[""] call EMM_fnc_setPreset;
};

EMM_var_temp_DELETE_PRESET_APPROVE = nil