params["_script", "_name"];

if (isNil "_script") exitWith {
	["Empty module"] call VTG_fnc_message;
};

private _main = {
	call _modifyOldModule;

	private _GLmodule = create3DENEntity ["Logic", "Logic", [0,0,0]];

	_GLmodule set3DENAttribute ["Name", _name];
	_GLmodule set3DENAttribute ["Init", _script];
};

private _modifyOldModule = {
	private _allLogicModules = allMissionObjects "Logic";

	{
		private _varName = (_x get3DENAttribute "Name")#0;
		if (_varName == _name) then {
			delete3DENEntities [_x];
		};
	}forEach _allLogicModules;
};

call _main;

["Module created"] call VTG_fnc_message;

// private _setToLayer = {
// 	_module = param[0];


// };