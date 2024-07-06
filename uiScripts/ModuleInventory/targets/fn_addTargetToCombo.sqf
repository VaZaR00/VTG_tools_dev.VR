params["_text", ["_tooltip", ""]];

private _targetsCombo = VTG_equipUI#7;
private _index = _targetsCombo lbAdd _text;
_targetsCombo lbSetTooltip [_index, _tooltip];