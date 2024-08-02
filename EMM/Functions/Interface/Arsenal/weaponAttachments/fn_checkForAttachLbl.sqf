params["_path", "_remove"];

private _upPath = [];
private _notFound = true;
for "_i" from 0 to (count _path) do {
	_upPath pushBack (_path#_i);
	if ((" + " + "Attachments") in ((EMM_equipUI#1) tvText _upPath)) exitWith {
		if ((_remove) && (((EMM_equipUI#1) tvCount _upPath) == 0)) then {
			[_upPath, false] call EMM_fnc_attachLbl; //removing label
		};
		_notFound = false;
	};
};

if (_notFound && !_remove) then {
	[_upPath, true] call EMM_fnc_attachLbl;  //adding label
};