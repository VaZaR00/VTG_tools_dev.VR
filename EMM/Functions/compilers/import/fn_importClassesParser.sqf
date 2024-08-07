params["_text"];

private _classes = _text splitString " ;,.[]()&%$#/'""";
private _elements = [];
{
	private _class = _x;
	private _func = [_class] call EMM_fnc_getItemTypeFunc;

	_elements pushBack [_class, _func, 1];
} forEach _classes;

_elements