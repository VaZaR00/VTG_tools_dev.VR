#include "..\..\defines.hpp";

params["_show"];

//arsenal
C_SHOW_EMM(1800, _show);
C_SHOW_EMM(1511, _show);
C_SHOW_EMM(1338, false);

//module
C_SHOW_EMM(1801, _show);
C_SHOW_EMM(6451, _show);

//start
// (_display displayCtrl 6512) ctrlShow (!_show);
C_SHOW_EMM(6512, (!_show));

if (isNil "EMM_equipUI") exitWith {};
//attachments hint
private _category = ((EMM_equipUI#19) lbText (lbCurSel (EMM_equipUI#19)));
if (("Access" in _category) or ("Magaz" in _category)) then {
	(EMM_equipUI#10) ctrlShow true
} else { (EMM_equipUI#10) ctrlShow false }; 