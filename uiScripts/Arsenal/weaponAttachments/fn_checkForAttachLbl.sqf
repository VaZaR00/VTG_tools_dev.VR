params["_path"];

private _upPath = [];
for "_i" from 0 to (count _path) do {
	_upPath pushBack (_path#_i);
	if ((" + " + "Attachments") in ((VTG_equipUI#1) tvText _upPath)) exitWith {
		[_upPath, false] call VTG_fnc_attachLbl;
	};
};