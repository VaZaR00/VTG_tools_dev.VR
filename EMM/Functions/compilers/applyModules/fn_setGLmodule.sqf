private _setGL = {
	params["_script", "_name"];

	if (isNil "_script") exitWith {
		["Empty module"] call EMM_fnc_message;
	};

	private _set = {
		_script = "if (!isServer) exitWith {};" + _script + ";EMM_flag_GIVE_DONE = true;";

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

	call _set;

	["Module created"] call EMM_fnc_message;
};

private _script = call EMM_fnc_compiler;

if (isNil "_script") exitWith {
	["No modules!", 1] call EMM_fnc_message;
};

[_script, "EQUIP_MODULES_COMPILED_CODE"] call _setGL;