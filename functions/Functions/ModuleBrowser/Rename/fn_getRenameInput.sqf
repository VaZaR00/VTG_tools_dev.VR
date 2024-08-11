private _tree = EMM_equipUI#5;
private _path = tvCurSel _tree;

private _display = (findDisplay 15550);
private _inputField = _display displayCtrl 1400;
private _input = ctrlText _inputField;

if (_input == "") exitWith {
	["Name shouldn't be empty!", 1] call EMM_fnc_message;
};

if (count (_input trim ["@#$%^~{};", 0]) < count _input) exitWith {
	["@#$%^~{};    -    symbols are prohibited!", 1] call EMM_fnc_message;
};

if (_input == (_tree tvText _path)) exitWith {
	[_inputField] call EMM_fnc_close;
};

if ([_input] call EMM_fnc_checkIfNameExists) exitWith {
	["Name is already used!", 1] call EMM_fnc_message;
};

[_inputField] call EMM_fnc_close;

EMM_ENTERED_NAME = _input;

[_input] call EMM_fnc_setModulesTreeSize;