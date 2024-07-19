private _nameCtrl = EMM_equipUI#6; //Name input field
private _targetsCtrl = EMM_equipUI#7;
private _invTreeCtrl = EMM_equipUI#1; //Modules items tree

(EMM_equipUI#15) ctrlSetText "New Module";
_nameCtrl ctrlSetText "";
_targetsCtrl lbSetCurSel 0;
tvClear _invTreeCtrl;