private _display = (findDisplay 11549) createDisplay "EMM_presetManager";

EMM_PM_listBox = _display displayCtrl 1500;

[] call EMM_fnc_loadPresetsList;