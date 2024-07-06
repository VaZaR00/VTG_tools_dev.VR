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
		[ctrlText (_this select 0)] call VTG_fnc_loadArsenal;
	};
};