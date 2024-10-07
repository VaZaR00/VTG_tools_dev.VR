#include "..\..\..\defines.hpp";

params["_module"];

private _targets = (_module#1)#0;
private _items = (_module#1)#1;
PR(_type) = (_module#1)#2;
_type = ISNIL(_type, 0);
private _name = _module#0;

if ("%EMM_comp%" in (_targets#0)) exitWith {""};

EMM_var_temp_COMPILE_MODULE_TYPE = _type;
PR(_func) = EMM_fnc_compileItemFunc;
private _itemsScripts = "";

PR(_entities) = switch (_type) do {
	case 1: {
		"vehicles"
	};
	default { "allUnits" };
};


{
	private _itemFunc = [+_x, _name] call _func;
	_itemsScripts = _itemsScripts + _itemFunc;
} forEach _items;

private _targetsScript = if (count _targets == 1) then {
	format[switch (_targets#0) do {
		case "all": { "%1" };
		case "blue": { "%1 select {side _x == west}" };
		case "red": { "%1 select {side _x == east}" };
		case "ind": { "%1 select {side _x == resistance}" };
		case "civ": { "%1 select {side _x == civilian}" };
		default { "%1 select {(typeOf _x) == %2}" };
	}, _entities, str (_targets#0)]
} else {
	private _targetsClasses = _targets#0;
	private _include = _targets#1;
	private _exclude = _targets#2;

	private _getUnits = {
		params["_arr"];
		private _units = (call compile _entities) select {
			private _var = _x get3DENAttribute "name"; 
			(_var#0) in _arr 
		};
		_units apply { get3DENEntityID _x };
	};

	_targetsClasses apply { str _x };
	private _text = format["(%1 select {(typeOf _x) in %2})", _entities, _targetsClasses];

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

EMM_var_temp_COMPILE_MODULE_TYPE = nil;

_script;