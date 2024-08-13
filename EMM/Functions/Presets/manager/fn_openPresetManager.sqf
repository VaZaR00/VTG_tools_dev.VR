private _display = (findDisplay 11549) createDisplay "EMM_presetManager";

EMM_var_disp_PRESET_MANAGER = _display;

(_display displayCtrl 2314) ctrlSetEventHandler ['KeyUp', '[_this, EMM_fnc_loadPresetsList, 0.2] call EMM_fnc_onSearchKeyUp'];

EMM_PM_listBox = _display displayCtrl 1500;

[] call EMM_fnc_loadPresetsList;