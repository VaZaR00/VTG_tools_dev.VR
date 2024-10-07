#include "..\..\..\defines.hpp";

private _text = copyFromClipboard;
private _items = _text call EMM_fnc_parser_middleware;  //[_class, _function, _amount]

if (isNil "_items") exitWith {};

EMM_EQUIP_TEST_FAILED_ARR = [];

PR(_dest) = switch (EMM_var_ActiveModuleTab#0) do {
    case 0: {""};
    case 1: {"AIU"};
    case 2: {"AIV"};
    case 3: {"AIB"};
    default {""};
};

isNil {
{
	[_x, nil, _dest] call EMM_fnc_setModuleItem;
} forEach _items;
};

//(EMM_equipUI#1) tvSortAll [[], false];
call EMM_fnc_failedToLoadReport; //check if there any problems