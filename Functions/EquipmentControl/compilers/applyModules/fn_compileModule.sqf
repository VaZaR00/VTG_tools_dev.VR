params["_module"];

private _targets = (_module#1)#0;
private _items = (_module#1)#1;
private _name = _module#0;

if ("comp" in (_targets#0)) exitWith {""};

private _itemsScripts = "";

{
	private _itemFunc = [+_x, _name] call EMM_fnc_compileItemFunc;
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

	private _getUnits = {
		params["_arr"];
		private _units = allUnits select {
			private _var = _x get3DENAttribute "name"; 
			(_var#0) in _arr 
		};
		_units apply { get3DENEntityID _x };
	};

	_targetsClasses apply { str _x };
	private _text = format["(allUnits select {(typeOf _x) in %1})", _targetsClasses];

	if (_include != "") then {
		_include = _include splitString " ,;.";
		_include = _include arrayIntersect _include;
	};
	if (_exclude != "") then {
		_exclude = _exclude splitString " ,;.";
		_exclude = _exclude arrayIntersect _exclude;
	};
	
	if (count _include != 0) then {
		if !(isNil "EMM_EQUIP_TEST_BOOL") then {	
			_include = [_include] call _getUnits;
			_text = _text + format[" + (%1 apply { get3DENEntity _x })", _include];
		}else{
			_text = _text + format[" + (%1 apply {call compile _x})", _include];
		};
	};
	if (count _exclude != 0) then {
		if !(isNil "EMM_EQUIP_TEST_BOOL") then {	
			_exclude = [_exclude] call _getUnits;
			_text = _text + format[" - (%1 apply { get3DENEntity _x })", _exclude];
		}else{
			_text = _text + format[" - (%1 apply {call compile _x})", _exclude];
		};
	};
	_text;
};

private _script = format["{%1}forEach (%2);", _itemsScripts, _targetsScript];

_script;