params ['_ctrl', '_func', ["_wait", 1]];
_ctrl = _ctrl#0;

if (isNil 'EMM_searchTimeoutThread') then {
	EMM_searchTimeoutThread = scriptNull;
};
EMM_searchTimeout = diag_tickTime + 0.1;
if (isNull EMM_searchTimeoutThread || scriptDone EMM_searchTimeoutThread) then {
	EMM_searchTimeoutThread = [_ctrl, _func, _wait] spawn {
		params['_ctrl', '_func', '_wait'];
		waitUntil {
			uiSleep _wait;
			EMM_searchTimeout <= diag_tickTime
		};
		[ctrlText (_ctrl)] call _func;
	};
};