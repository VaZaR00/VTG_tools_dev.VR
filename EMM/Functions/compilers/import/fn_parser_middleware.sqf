params[["_text", ""]];

if (
	//((_text find "Exported from Arsenal") != -1) ||
	// ((_text find "this add") != -1) ||
	// ((_text find "this lin") != -1)
	(([" add", " link", " assign", " forcea"] findIf {_x in (toLower _text)}) != -1)
	//"_" in (toLower _text)
) exitWith {
	[_text] call EMM_fnc_bi_arsenalExportParser; //return
};

// if ("_" in (toLower _text)) exitWith {
private _res = [_text] call EMM_fnc_importClassesParser; //return
// };

if (count _res != 0) then {_res} else {nil};

// ["Import not valid!", 1] call EMM_fnc_message;
