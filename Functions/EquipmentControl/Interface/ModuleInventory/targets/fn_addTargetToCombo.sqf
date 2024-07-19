params["_text", ["_tooltip", ""], "_type"];

private _targetsCombo = EMM_equipUI#7;
private _index = _targetsCombo lbAdd _text;
_targetsCombo lbSetTooltip [_index, _tooltip];
_targetsCombo lbSetData [_index, _type];