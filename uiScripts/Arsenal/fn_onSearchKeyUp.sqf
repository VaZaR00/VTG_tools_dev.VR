params ['_ctrl'];
if (isNil 'VTG_searchTimeoutThread') then {
	VTG_searchTimeoutThread = scriptNull;
};
VTG_searchTimeout = diag_tickTime + 0.5;
if (isNull VTG_searchTimeoutThread || scriptDone VTG_searchTimeoutThread) then {
	VTG_searchTimeoutThread = [_ctrl] spawn {
		waitUntil {
			uiSleep 0.1;
			VTG_searchTimeout <= diag_tickTime
		};
		if (ctrlShown (VTG_equipUI#10)) exitWith {
			[ctrlText (_this select 0), (VTG_equipUI#10), VTG_weaponAttahcments] call VTG_fnc_loadArsenal;
		};
		[ctrlText (_this select 0)] call VTG_fnc_loadArsenal;
	};
};