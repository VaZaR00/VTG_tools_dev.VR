//private _default = (EMM_equipUI#5) tvText (tvCurSel (EMM_equipUI#5));
params["_module"];

call EMM_fnc_resetModule;
call EMM_fnc_closeWeapAttachMenu;

(EMM_equipUI#15) ctrlSetText (format["Modifying ""%1"" module", _module]);

EMM_Current_Module = _module;

[_module] call EMM_fnc_loadModuleData;
