private _exportText = param[0];

private _elements = [];
private _main = {	
	params["_exportText"];
	_arr = _exportText splitString ";";

	{
		_str = _x;
		if ("this " in _str) then {
			[_str] call _parseString;
		};
	}forEach _arr;

	_elements;
};


private _parseString = {
	_str = param[0];
	_arr = _str splitString " ";

	_class = (_arr select -1) trim ['"', 0]; 
	_function = [(_arr select -2)] call EMM_fnc_convertFunctionToAttribute; 
	_amount = 1;

	if ("from " in _str) then {
		_amount = parseNumber (_str select [(_str find "to ") + 3, 1]); 
	};

	_element = [_class, _function, _amount];
	_elements pushBack _element;
};

[_exportText] call _main;