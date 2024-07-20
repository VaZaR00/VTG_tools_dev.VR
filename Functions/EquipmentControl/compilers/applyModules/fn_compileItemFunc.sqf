params["_data", "_moduleName", ["_dest", ""]];

private _class = _data#0;

private _text = "";

if ("comp$$" in _class) exitWith {
	private _module = (_class splitString "$$")#1;
	private _items = ([false, false, _module] call EMM_fnc_getModulesStorage)#1;
	{
		private _itemFunc = [+_x, _module] call EMM_fnc_compileItemFunc;
		_text = _text + _itemFunc;
	} forEach _items;

	_text //return
};

if (_class == "Rand") exitWith {
	_data deleteAt 0;
	private _randArr = [];
	{
		private _func = [_x, _moduleName, _dest] call EMM_fnc_compileItemFunc;
		_randArr pushBack _func;
	} forEach _data;
	_text = format["_x call compile (selectRandom %1);", _randArr];

	_text //return
};

private _func = [_data#1] call EMM_fnc_convertAttributeToFunction;
private _amount = _data#2;

private _ifTestFormat = {
	params["_text"];

	if (EMM_EQUIP_TEST_BOOL) then {
		private _conditionFormat = switch (_data#1) do {
			case "AW": {
				private _baseclass = [configFile >> 'CfgWeapons' >> _class, true] call BIS_fnc_returnParents;
				switch (_baseclass select -2) do {
					case "PistolCore": { "(handgunWeapon _x)==''" };
					case "LauncherCore": { "(secondaryWeapon _x)==''" };
					default { "(primaryWeapon _x)==''" };
				};
			};
			case "AH": { "(headgear _x)==''" };
			case "FAU": { "(uniform _x)==''" };
			case "AV": { "(vest _x)==''" };
			case "AB": { "(backpack _x)==''" };
			case "AG": { "(goggles _x)==''" };
			case "AWI": { "%2 canAdd %1" };
			case "AIU": { "_x canAddItemToUniform %1" };
			case "AIV": { "_x canAddItemToVest %1" };
			case "AIB": { "_x canAddItemToBackpack %1" };
			case "LI": { "true" };
			default { "_x canAdd %1" };
		};
		private _condition = format[_conditionFormat, str _class, str _dest];
		_text = format["if(%1)then{%2}else{EMM_EQUIP_TEST_FAILED_ARR pushBack [%4, _x, %3]};", _condition, _text, str _class, str _moduleName];
	};

	_text
};

private _format = switch (_data#1) do {
	case "AWI": { "_x %1 [%4, %2, true];" };
	case "AMS": { "_x %1 [%2, %3];" };
	default { "_x %1 %2;" };
};
_format = _format call _ifTestFormat;
if ((_amount > 1)&&((_data#1) != "AMS")) then {
	_format = "for ""_i"" from 1 to %3 do {" + _format + "};";
};
_text = format[_format, _func, str _class, _amount, str _dest];

if (count _data < 4) exitWith {_text};//return

private _attachs = _data#3;

{
	if ((_x#0) == "Rand") exitWith {
		private _item = +_x
	};
	if ((_x#2) != 1) exitWith {

	};
}forEach _attachs;

private _isLoadedMag = false;
private _isLoadedGl = false;

private _setAddMag = {
	params["_item"];

	if ((_item#0) == "Rand") exitWith {
		_item deleteAt 0;
		_item apply {_x set [1, "AM"]};
		_item insert [0, ["Rand"]];
		_item
	};

	_item set [1, "AM"];
	_item
};

private _giveOtherMags = {
	params["_item"];

	_item = [_item] call _setAddMag;

	_item set [2, (_item#2) - 1];

	private _attFunc = [_item, _moduleName, _class] call EMM_fnc_compileItemFunc;
	_text = _text + _attFunc;
};

{
	private _item = _x;
	private _type = (_item#0) call BIS_fnc_itemType;
	if ((_type#0) == "Magazine") then {
		private _isGl = ((_type)#1) in ["Shell", "SmokeShell", "Flare"];
		if (_isGl) then {
			if (_isLoadedGl) then {
				_item = [+_x] call _setAddMag;
			} else {
				_isLoadedGl = true;
				[+_x] call _giveOtherMags;
			};
		} else {
			if (_isLoadedMag) then {
				_item = [+_x] call _setAddMag;
			} else {
				_isLoadedMag = true;
				[+_x] call _giveOtherMags;
			};
		};
	};
	private _attFunc = [_item, _moduleName, _class] call EMM_fnc_compileItemFunc;
	_text = _text + _attFunc;
} forEach _attachs;

_text //return