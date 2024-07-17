private _nameCtrl = VTG_equipUI#6; //Name input field
private _targetsCtrl = VTG_equipUI#7;
private _invTreeCtrl = VTG_equipUI#1; //Modules items tree

(VTG_equipUI#15) ctrlSetText "New Module";
_nameCtrl ctrlSetText "";
_targetsCtrl lbSetCurSel 0;
tvClear _invTreeCtrl;