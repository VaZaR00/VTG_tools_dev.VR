private _options = [
	//option variable
	//Description
	//Tooltip
	//Default value
	//optional code
	[
		"EMM_expandInvChkbox", 
		"Expand inventory", 
		"Expand Module inventory items tree", 
		true,
		"if (EMM_Current_Module != 'none') then {[EMM_Current_Module] call EMM_fnc_loadModuleData};"
	], 
	[
		"EMM_validateFunctions", 
		"Validate functions", 
		"Validate items functions",
		true,
		""
	], 
	[
		"EMM_SHOW_TARGETS_CLASSES", 
		"Targets as class",  
		"Show targets as classes",
		false,
		"call EMM_fnc_loadTargetsCombo; call EMM_fnc_loadModulesTree; if (EMM_Current_Module != 'none') then {[EMM_Current_Module] call EMM_fnc_loadModuleData};"
	]
];

EMM_ID_OPTION_CODE_HASHMAP = createHashMap;
private _lineCtrl = EMM_equipUI#17;
private _display = ctrlParent _lineCtrl;

private _xPosLbl = 4 * 0.005;
private _yPosLbl = 0.4 * 0.005;
private _xSizeLblCoef = 2;
private _ySizeLbl = 7 * 0.005;

private _xPosChkBox = 0;
private _yPosChkBox = 0.8 * 0.005;
private _xSizeChkBox = 5 * 0.005;
private _ySizeChkBox = 6.5 * 0.005;

{
	private _optionVar = _x#0;
	private _description = _x#1;
	private _tooltip = _x#2;
	private _default = _x#3;
	private _code = _x#4;

	private _profVar = _optionVar + "_prof";
	private _textWidth = _description getTextWidth ["RobotoCondensed", 8 * 0.005];

	private _xSizeLbl = _textWidth + (_xSizeLblCoef * 0.005);

	//checkbox
	private _currentChecked = profileNamespace getVariable [_profVar, _default];
	private _checkbox = _display ctrlCreate ["RscCheckbox", 760 + _forEachIndex, _lineCtrl];

	EMM_ID_OPTION_CODE_HASHMAP set [760 + _forEachIndex, [_optionVar, _profVar,_code]];
	
    _checkbox ctrlSetPosition [_xPosChkBox, _yPosChkBox, _xSizeChkBox, _ySizeChkBox];
	_checkbox ctrlCommit 0;
	_checkbox cbSetChecked _currentChecked;
	_checkbox ctrlSetTooltip _tooltip;
	_checkbox ctrlAddEventHandler ["CheckedChanged", {
		params ["_control", "_checked"];
		_checked = if (_checked == 1) then {true} else {false};
		private _vars = EMM_ID_OPTION_CODE_HASHMAP get (ctrlIDC _control);
		call compile format["%1 = %2", (_vars#0), _checked];
		profileNamespace setVariable [(_vars#1), _checked];
		call compile (_vars#2);
	}];
	call compile format["%1 = %2", _optionVar, _currentChecked];

	_xPosChkBox = _xPosChkBox + _xSizeChkBox + _xSizeLbl;

	//description
	private _descCtrl = _display ctrlCreate ["RscText", -1, _lineCtrl];
	_descCtrl ctrlSetPosition [_xPosLbl, _yPosLbl, _xSizeLbl, _ySizeLbl];
	_descCtrl ctrlCommit 0;
	_descCtrl ctrlSetTooltip _tooltip;
	_descCtrl ctrlSetText _description;

	_xPosLbl = _xPosLbl + _xSizeChkBox + _xSizeLbl;
} forEach _options;
