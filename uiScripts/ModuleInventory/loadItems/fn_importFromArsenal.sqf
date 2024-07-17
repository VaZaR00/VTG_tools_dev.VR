private _text = copyFromClipboard;
private _items = _text call VTG_fnc_parser_middleware;  //[_class, _function, _amount]

if (isNil "_items") exitWith {};

{
	[_x] call VTG_fnc_setModuleItem;
} forEach _items;

//(VTG_equipUI#1) tvSortAll [[], false];