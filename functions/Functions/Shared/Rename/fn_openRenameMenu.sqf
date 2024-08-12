params[["_el", "Element"], ["_defaultName", nil]];

private _date = systemTimeUTC joinString "-";
private _defaultName = if ((isNil "_defaultName") || (_defaultName isEqualTo "")) then {
	"New" + _el + _date
} else {
	_defaultName
};
EMM_var_temp_RENAME_EL_TYPE = _el;

private _display = (findDisplay 11549) createDisplay 'EMM_name_input_menu';
private _input = _display displayCtrl 1400;

_input ctrlSetText _defaultName;
_input ctrlSetTextSelection [0, count _defaultName];