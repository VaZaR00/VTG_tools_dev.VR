//private _default = (VTG_equipUI#5) tvText (tvCurSel (VTG_equipUI#5));
params["_module"];

call VTG_fnc_resetModule;
call VTG_fnc_closeWeapAttachMenu;

(VTG_equipUI#15) ctrlSetText (format["Modifying ""%1"" module", _module]);

VTG_Current_Module = _module;

[_module] call VTG_fnc_loadModuleData;
