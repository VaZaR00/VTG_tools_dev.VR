private _display = param[0];
private _combo = _display displayCtrl 2100;
private _func = _combo lbText (lbCurSel _combo);

if (_func == "Default") exitWith {};

_funcShort = _func call EMM_fnc_convertFunctionToAttribute;
private _moduleTree = EMM_equipUI#1;
private _selection = tvCurSel _moduleTree;
_moduleTree tvSetData [_selection, _funcShort];

private _changeItemPlace = {
	params["_selection", "_moduleTree", "_func", "_destination"];

	_category = _moduleTree tvText [_selection#0];
	_classname = _moduleTree tvTooltip _selection;

	_path = [_destination, [_category]] call EMM_fnc_checkCategories;
	[_path, _classname, _func] call EMM_fnc_peekItem;

	[true, _selection] call EMM_fnc_deleteModuleItems;
};

if (_funcShort in ["AIV", "AIB", "AIU"]) then {
	_destination = switch (_funcShort) do {
		case "AIV": {"To Vest"};
		case "AIB": {"To Backpack"};
		case "AIU": {"To Uniform"};
	};
	[_selection, _moduleTree, _funcShort, _destination] call _changeItemPlace;
};

[] call EMM_fnc_updateAddFunc;