params[["_text", ""]];

if (
	//((_text find "Exported from Arsenal") != -1) ||
	// ((_text find "this add") != -1) ||
	// ((_text find "this lin") != -1)
	(([" add", " link", " assign", " forceadd"] findIf {_x in (toLower _text)}) != -1)
) exitWith {
	[_text] call EMM_fnc_bi_arsenalExportParser; //return
};

["Export not valid!"] call EMM_fnc_message;

nil;