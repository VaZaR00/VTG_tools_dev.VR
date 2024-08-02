params["_text", "_type", ["_path", [] ]];

private _ctrl = EMM_equipUI#5;

private _index = _ctrl tvAdd [_path, _text];
_path pushBack _index;
_ctrl tvSetData [_path, _type];
_ctrl tvSetTooltip [_path, _text];

[_text] call EMM_fnc_setModulesTreeSize;

_index;