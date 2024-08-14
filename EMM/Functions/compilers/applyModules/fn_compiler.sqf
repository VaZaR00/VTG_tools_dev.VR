params[["_data", call EMM_fnc_prepareStorage], ["_compose", true]];

if (count _data == 0) exitWith {nil};

private _script = 
["private _removeEq = {
params[""_u""];
removeAllWeapons _u;
removeAllItems _u;
removeAllAssignedItems _u;
removeUniform _u;
removeVest _u;
removeBackpack _u;
removeHeadgear _u;
removeGoggles _u;};
{_x call _removeEq} forEach allUnits;"];

{
	private _moduleScript = [+_x] call EMM_fnc_compileModule;
	_script pushBack _moduleScript;
} forEach _data;

if (!_compose) exitWith {_script};

_script = _script joinString " "; 

if (EMM_var_COMPILE_IN_SPAWN) then {
	_script = format["[] spawn {%1};", _script];
};

_script