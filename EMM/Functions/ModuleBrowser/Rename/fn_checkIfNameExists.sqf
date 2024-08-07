params["_newName"];

private _allNames = call EMM_fnc_getFoldersStorage;
_allNames = _allNames select { (_x#1) == '%EMM_MODULE%' };
_allNames = _allNames apply {_x#2};

if (_newName in _allNames) then { true } else { false }