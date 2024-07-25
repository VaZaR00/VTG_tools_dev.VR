private _exportText = param[0];

private _elements = [];
private _main = {	
	params["_exportText"];
	_arr = _exportText splitString ";";

	{
		_str = _x;
		if (
			//("this " in _str) ||
			(([" add", " link", " assign", " forceadd"] findIf {_x in (toLower _str)}) != -1)
		) then {
			[_str] call _parseString;
		};
	}forEach _arr;

	_elements;
};


private _parseString = {
	params["_str"];
	
	if ("selectRandom" in _str) exitwith {
		private _split = _str splitString "[]";
		private _func = [((_split#0) splitString " ")#(-2)] call EMM_fnc_convertFunctionToAttribute;
		private _classes = (_split#1) splitString ", ";
		_classes = _classes apply { [_x trim ["'""", 0], _func, 1] };
		_elements append _classes;
	};

	_arr = _str splitString " ";
	_function = [(_arr select -2)] call EMM_fnc_convertFunctionToAttribute; 
	_class = (_arr select -1) trim ["'""", 0]; 
	_amount = 1;

	if ("from " in _str) then {
		_amount = parseNumber (_str select [(_str find "to ") + 3, 1]); 
	};

	_element = [_class, _function, _amount];
	_elements pushBack _element;
};

[_exportText] call _main;