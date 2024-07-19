private _executionType = param[0];

private _main = {
    _moduleAndTargets = [];
    _units = [];
    
    if ((_executionType != "all")&&(_executionType != "selected")) exitwith {
        [[_executionType] call _getTargetsOfModule] call EMM_fnc_giveEquipExecution;
    };
    
    switch (_executionType) do {
        case "all": {
            _units = allunits;
        };
        case "selected": {
            _units = (get3DENSelected "object") select {
                _x in allunits
            };
        };
    };
    
    _moduleAndTargets = [_units] call _getTargetsAndNeededModules;
    [_moduleAndTargets] call EMM_fnc_giveEquipExecution;
};

private _getTargetsAndNeededModules = {
    _units = param[0];
    
    _dataMap = call EMM_fnc_getAllmodulesFromStorage;
    
    if (_dataMap isEqualTo false) exitwith {};
    // error
    
    _allModuleNamesWithRandoms = keys _dataMap;
    _allModuleNames = _allModuleNamesWithRandoms select {
        !("R$$" in _x)
    };
    
    _unitsSide = _units apply { str side _x };
    _sides = _unitsSide arrayIntersect _unitsSide;
    _unitsClassnames = _units apply { typeOf _x };
    
    _modules = _allModuleNames select {
        _attribute = (_x splitString "$$")#0;
        (_attribute in _sides) || (_attribute in _unitsClassnames)
    };
    _result = [];
    {
        _attribute = (_x splitString "$$")#0;
        _affectedUnits = [];
        if (_attribute in _sides) then {
            _affectedUnits = _units select {
                str side _x == _attribute
            };
        };
        if (_attribute in _unitsClassnames) then {
            _affectedUnits = _units select {
                typeOf _x == _attribute
            };
        };
        _result pushBack [_x, _affectedUnits];
    }forEach _modules;
    
    _result;
};

private _getTargetsOfModule = {
    _moduleName = param[0];
    _units = [];
    
    _attribute = (_moduleName splitString "$$")#0;
    if (_attribute in ["EAST", "WEST", "GUER", "CIV"]) then {
        _units = units (call compile _attribute);
    } else {
        _units = allUnits select {
            typeOf _x == _attribute
        };
    };
    _result = [_moduleName, _units];
    _result;
};

call _main;