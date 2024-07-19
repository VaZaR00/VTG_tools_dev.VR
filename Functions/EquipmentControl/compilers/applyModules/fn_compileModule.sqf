params["_module"];

private _targets = _module#0;
private _items = _module#1;

private _itemsScripts = "";

{
	private _itemFunc = [+_x] call EMM_fnc_compileItemFunc;
	_itemsScripts = _itemsScripts + _itemFunc;
} forEach _items;

private _targetsScript = if (count _targets == 1) then {
	switch (_targets#0) do {
		case "all": { "allUnits" };
		case "blue": { "allUnits select {side _x == west}" };
		case "red": { "allUnits select {side _x == east}" };
		case "ind": { "allUnits select {side _x == resistance}" };
		case "civ": { "allUnits select {side _x == civilian}" };
		default { format["allUnits select {(typeOf _x) == %1}", str (_targets#0)] };
	};
} else {
	private _targetsClasses = _targets#0;
	private _include = _targets#1;
	private _exclude = _targets#2;

	_targetsClasses apply { str _x };
	private _text = format["(allUnits select {(typeOf _x) in %1})", _targetsClasses];

	if (_include != "") then {
		_include = _include splitString " ,;.";
	};
	if (_exclude != "") then {
		_exclude = _exclude splitString " ,;.";
	};

	if (count _include != 0) then {
		_text = "(" + _text + format["insert [-1, %1])", _include];
	};
	if (count _exclude != 0) then {
		_text = _text + format["- %1", _exclude];
	};
	_text;
};

private _script = format["{%1}forEach (%2);", _itemsScripts, _targetsScript];
//hint _script;
_script;