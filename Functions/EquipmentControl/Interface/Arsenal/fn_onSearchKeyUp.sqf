params ['_ctrl'];
if (isNil 'EMM_searchTimeoutThread') then {
	EMM_searchTimeoutThread = scriptNull;
};
EMM_searchTimeout = diag_tickTime + 0.5;
if (isNull EMM_searchTimeoutThread || scriptDone EMM_searchTimeoutThread) then {
	EMM_searchTimeoutThread = [_ctrl] spawn {
		waitUntil {
			uiSleep 0.1;
			EMM_searchTimeout <= diag_tickTime
		};
		if (ctrlShown (EMM_equipUI#10)) exitWith {
			[ctrlText (_this select 0), (EMM_equipUI#10), EMM_weaponAttahcments, false] spawn EMM_fnc_loadArsenal;
		};
		[ctrlText (_this select 0)] spawn EMM_fnc_loadArsenal;
	};
};