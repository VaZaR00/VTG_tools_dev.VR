private _squad = param[0];
private _squadLead = (units _squad)#0;
private _name = _squadLead get3DENAttribute "description";

private _pos = _name find "@";

// Если символ "@" найден, обрезаем строку
if (_pos != -1) then {
    _name = _name select [0, _pos];
};

_squadLead set3DENAttribute ["description", _name];
