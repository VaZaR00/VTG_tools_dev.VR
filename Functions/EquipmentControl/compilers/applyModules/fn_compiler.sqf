params[["_data", call EMM_fnc_prepareStorage]];

if (count _data == 0) exitWith {nil};

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

[_script] call EMM_fnc_message;
copyToClipboard _script;
_script