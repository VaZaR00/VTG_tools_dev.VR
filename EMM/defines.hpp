#define EMM_var_pic_MODULE "a3\3den\data\cfg3den\history\changeattributes_ca.paa"
#define EMM_var_pic_FOLDER "a3\3den\data\cfg3den\layer\icon_ca.paa"
#define EMM_var_pic_NOTHING "a3\3den\data\cfgwaypoints\dismiss_ca.paa"

#define SPWN_HNDL(func) if (!(isNil #func)&&{not isNull func}) then {terminate func}; func = _thisScript;
#define SPWN_N_WAIT(func) private _handle = [] spawn func; waitUntil {scriptDone _handle};
#define SPWN_N_WAIT_A(func, args) private _handle = args spawn func; waitUntil {scriptDone _handle};
#define SPWN_N_WAIT_RES(func, var, args) private _res = []; private _handle = [args, _res] spawn { (_this select 1) pushBack ((_this select 0) call func) }; waitUntil {scriptDone _handle}; private var = _res select 0; _res = nil;
// #define SPWN_N_WAIT_RES_G(func, var, args) private _handle = args spawn {EMM_TEMP_SPWN_N_WAIT_RETURN = _this call func}; waitUntil {scriptDone _handle}; var = EMM_TEMP_SPWN_N_WAIT_RETURN; EMM_TEMP_SPWN_N_WAIT_RETURN = nil;
#define WAIT_VAR(var, value) private var = value; waitUntil {!isNil #var#};
#define PR(var) private var
#define ARR_IN_STR(arr, str) ((arr findIf {_x in ( str )}) != -1)

#define MSG(text,type) [text, type] call EMM_fnc_message
#define CR_DISP(parent, name) (findDisplay parent) createDisplay name;
#define C_SHOW_EMM(ctrlIDC) ((findDisplay 11549) displayCtrl ctrlIDC) ctrlShow 


