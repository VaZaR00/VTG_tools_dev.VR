params[["_set", false]];

if (_set) exitwith {
	profileNamespace setVariable ["EMM_expandInvChkbox_prof", EMM_expandInvChkbox];
	profileNamespace setVariable ["EMM_validateFunctions_prof", EMM_validateFunctions];
};

//expand inventory chkbox
EMM_expandInvChkbox = profileNamespace getVariable ["EMM_expandInvChkbox_prof", true];
(EMM_equipUI#16) cbSetChecked EMM_expandInvChkbox;

//validate function chkbox
EMM_validateFunctions = profileNamespace getVariable ["EMM_validateFunctions_prof", true];
(EMM_equipUI#18) cbSetChecked EMM_validateFunctions;