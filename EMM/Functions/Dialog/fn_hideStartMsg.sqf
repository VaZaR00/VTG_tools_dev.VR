params[["_display", findDisplay 11549], "_show"];

//arsenal
(_display displayCtrl 1800) ctrlShow _show;
(_display displayCtrl 1511) ctrlShow _show;
(_display displayCtrl 1338) ctrlShow false;

//module
(_display displayCtrl 1801) ctrlShow _show;
(_display displayCtrl 6451) ctrlShow _show;

//start
(_display displayCtrl 6512) ctrlShow (!_show);

if (isNil "EMM_equipUI") exitWith {};
//attachments hint
private _category = ((EMM_equipUI#19) lbText (lbCurSel (EMM_equipUI#19)));
if (("Access" in _category) or ("Magaz" in _category)) then {
	(EMM_equipUI#10) ctrlShow true
} else { (EMM_equipUI#10) ctrlShow false }; 