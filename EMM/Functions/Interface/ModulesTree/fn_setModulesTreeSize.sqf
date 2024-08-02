params["_text"];

private _ctrl = EMM_equipUI#5;

private _newWidth = (_text getTextWidth ["RobotoCondensed", 8 * 0.005]) * 2;

private _ctrlSize = ctrlPosition _ctrl;

if ((_ctrlSize#2) < _newWidth) then {
	_ctrlSize set [2, _newWidth];
};

_ctrl ctrlSetPosition _ctrlSize;
_ctrl ctrlCommit 0;