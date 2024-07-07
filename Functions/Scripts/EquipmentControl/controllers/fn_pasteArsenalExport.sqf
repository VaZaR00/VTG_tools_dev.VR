private _exportText = param[0];

private _elements = [_exportText] call VTG_fnc_parser_middleware;

{
	[_x] call VTG_fnc_addItemToModule; 
} forEach _elements;