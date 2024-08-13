params[["_el", "Element"], ["_defaultName", nil], ["_display", EMM_var_disp_MODULE_MANAGER]];

EMM_var_temp_rename_open = true;

private _date = systemTimeUTC joinString "-";
_defaultName = if ((isNil "_defaultName") || {_defaultName isEqualTo ""}) then {
	"New" + _el + _date
} else {
	_defaultName
};
EMM_var_temp_RENAME_EL_TYPE = _el;

private _renameDisplay = _display createDisplay 'EMM_name_input_menu';
private _input = _renameDisplay displayCtrl 1400;

_input ctrlSetText _defaultName;
_input ctrlSetTextSelection [0, count _defaultName];