params ["_ctrl", "_sel"];

private _editBtn = VTG_equipUI#14;

if ((_ctrl lbData _sel) != "edit") exitWith {
	_editBtn ctrlShow false;
};

_editBtn ctrlShow true;