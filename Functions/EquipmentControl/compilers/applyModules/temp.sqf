private _data = param[0];

private _parseModule = {
	params["_data"];
	private _functionsArr = [];

	if (_data isEqualTo false) exitWith { ["empty storage"] call EMM_fnc_message; };

	{
		_element = _x;

		if ("$$" in _element) then { //if it's a random module
			_moduleArr = _element splitString "$$";
			_moduleData = [_moduleArr#2] call EMM_fnc_getModuleStorageData;

			if (_moduleData isEqualTo false) exitWith { ["empty storage"] call EMM_fnc_message; };

			_functionsArr pushBack ([_moduleData] call _compileRandom);
			continue;
		};
		
		_functionsArr pushBack ([_element] call _compileFunction);
	}forEach _data;

	private _script = _functionsArr joinString ";";
	_script; //result
};

private _compileFunction = {
	private _arr = param[0];

	private _amount = _arr#2;
	private _command = [_arr#1] call EMM_fnc_convertAttributeToFunction;
	private _class = _arr#2;

	private _function = "";
	if (_amount == 1) then {
		_function = format['_this %1 "%2"', _command, _class];
	}else{
		_function = format['for "_i" from 1 to %1 do {_this %2 "%3";}', _amount, _command, _class];
	};
	_function;
};

private _compileRandom = {
	private _data = param[0];
	
	private _values = _data#0;
	private _weights = _data#1;

	private _function = format["%1 selectRandomWeighted %2", _values, _weights];
	_function;
};

private _script = [] call _parseModule;

_script;