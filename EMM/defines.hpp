#define WAIT_VAR(var, value) private var = value; waitUntil {!isNil #var#};
#define PR(var) private var
#define ISNIL(var, default) if (isNil #var) then {default} else {var}
#define ARR_IN_STR(arr, str) ((arr findIf {_x in ( str )}) != -1)
#define ARR_IN_STR_I(arr, index, str) ((arr findIf {(_x#index) in ( str )}) != -1)
#define GetCfg(func, root, class, prop) func (configFile >> root >> class >> prop)

#define EMM_var_pic_MODULE "a3\3den\data\cfg3den\history\changeattributes_ca.paa"
#define EMM_var_pic_MODULE_CONT "a3\missions_f_oldman\data\img\holdactions\holdaction_box_ca.paa"
#define EMM_var_pic_FOLDER "a3\3den\data\cfg3den\layer\icon_ca.paa"
#define EMM_var_pic_NOTHING "a3\3den\data\cfgwaypoints\dismiss_ca.paa"

#define type_EMM_MODULE "%EMM_MODULE%"
#define type_EMM_MODULE_CONT "%EMM_MODULE_CONT%"
#define type_EMM_FOLDER "%EMM_FOLDER%"
#define EMM_var_BROWSER_TYPES [type_EMM_MODULE, type_EMM_MODULE_CONT]

#define MODULE_TYPE_DATA(type, sel) (([type] call EMM_fnc_moduleTypeData) select sel)
#define BROWSER_TYPE_DATA(type, sel) (([type] call EMM_fnc_browserTypesData) select sel)
#define TYPE_DATA_BY_I(typeIndex, sel) call {PR(_type) = MODULE_TYPE_DATA(typeIndex, 0); BROWSER_TYPE_DATA(_type, sel)}

#define SPWN_HNDL(func) if (!(isNil #func)&&{not isNull func}) then {terminate func}; func = _thisScript;
#define SPWN_N_WAIT(func) private _handle = [] spawn func; waitUntil {scriptDone _handle};
#define SPWN_N_WAIT_A(func, args) private _handle = args spawn func; waitUntil {scriptDone _handle};
#define SPWN_N_WAIT_RES(func, var, args) private _res = []; private _handle = [args, _res] spawn { (_this select 1) pushBack ((_this select 0) call func) }; waitUntil {scriptDone _handle}; private var = _res select 0; _res = nil;
// #define SPWN_N_WAIT_RES_G(func, var, args) private _handle = args spawn {EMM_TEMP_SPWN_N_WAIT_RETURN = _this call func}; waitUntil {scriptDone _handle}; var = EMM_TEMP_SPWN_N_WAIT_RETURN; EMM_TEMP_SPWN_N_WAIT_RETURN = nil;

#define MSG(text,type) [text, type] call EMM_fnc_message
#define CR_DISP(parent, name) (findDisplay parent) createDisplay name;
#define C_SHOW_EMM(ctrlIDC, show) ((findDisplay 11549) displayCtrl ctrlIDC) ctrlShow show;
#define C_SHOW_RNM(ctrlIDC, show) ((findDisplay 15550) displayCtrl ctrlIDC) ctrlShow show;


