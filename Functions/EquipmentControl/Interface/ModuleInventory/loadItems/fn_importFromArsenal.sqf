private _text = copyFromClipboard;
private _items = _text call EMM_fnc_parser_middleware;  //[_class, _function, _amount]

if (isNil "_items") exitWith {};

{
	[_x] call EMM_fnc_setModuleItem;
} forEach _items;

//(EMM_equipUI#1) tvSortAll [[], false];