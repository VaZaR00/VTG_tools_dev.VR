params[["_data", call EMM_fnc_prepareStorage], ["_compose", true], ["_skipByVar", true]];

if (count _data == 0) exitWith {nil};

private _script = 
[format["private _removeEq = {
%1
params[""_u""];
removeAllWeapons _u;
removeAllItems _u;
removeAllAssignedItems _u;
removeUniform _u;
removeVest _u;
removeBackpack _u;
removeHeadgear _u;
removeGoggles _u;};

private _clearCargo = {
%1
params[""_c""];
clearItemCargoGlobal _c;
clearMagazineCargoGlobal _c;
clearWeaponCargoGlobal _c;
clearBackpackCargoGlobal _c;};

{_x call _removeEq} forEach allUnits;
{_x call _clearCargo} forEach vehicles;
",if (_skipByVar) then {
	"if (_x getVariable ['EMM_skip_object', false]) exitWith {};"
} else {
	"if ('EMM_skip_object' in ((_x get3DENAttribute 'init')#0)) exitWith {};"
}]];

{
	if (count (_x#1) == 0) then {
		[_x#0, false, true] call EMM_fnc_deleteModule;
		continue
	};
	private _moduleScript = [+_x] call EMM_fnc_compileModule;
	_script pushBack _moduleScript;
} forEach _data;

if (!_compose) exitWith {_script};

_script = _script joinString " "; 

if (EMM_var_COMPILE_IN_SPAWN) then {
	_script = format["[] spawn {%1};", _script];
};

_script