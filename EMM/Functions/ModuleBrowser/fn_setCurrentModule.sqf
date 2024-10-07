#include "..\..\defines.hpp";

params ["_tree", "_sel"];

[] call EMM_fnc_resetModule;

//default module window
[true] call (ISNIL(EMM_var_f_WHEN_CONTAINER_MDL, {C_SHOW_EMM(1330, false);}));

private _module = _tree tvText _sel;
[_module] call EMM_fnc_loadModuleData;
[_tree, _sel] call EMM_fnc_setOpenedModuleColor;

EMM_Current_Module_path = +_sel;

_tree tvSetCurSel _sel;