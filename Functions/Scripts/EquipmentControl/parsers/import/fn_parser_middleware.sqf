private _text = param[0];

if ("Exported from Arsenal" in _text) exitWith {
	[_text] call VTG_fnc_BI_arsenalExportParser; //return
};