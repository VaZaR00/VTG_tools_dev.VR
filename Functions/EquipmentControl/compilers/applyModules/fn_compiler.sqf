private _data = call EMM_fnc_prepareStorage;

private _script = 
"private _removeEq = {
params[""_u""];
removeAllWeapons _u;
removeAllItems _u;
removeAllAssignedItems _u;
removeUniform _u;
removeVest _u;
removeBackpack _u;
removeHeadgear _u;
removeGoggles _u;};
{_x call _removeEq} forEach allUnits;";

{
	private _moduleScript = [+_x] call EMM_fnc_compileModule;
	_script = _script + _moduleScript;
} forEach _data;

//if (!isServer) exitWith {};
_script