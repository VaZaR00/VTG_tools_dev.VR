params["_class", "_func"];

private _type1 = [_class, _func] call EMM_fnc_getCategory;
private _type2 = [_class] call EMM_fnc_getCategory;

if (_func in ["AIU", "AIV", "AIB", "none"]) exitwith {_func};

if (_type1 != _type2) exitwith {
	[_class] call EMM_fnc_getItemTypeFunc;
};

_func;