private _classname = "arifle_MX_F";  

private _functions = [
	"linkItem",
	"addBackpackGlobal",
	"addBinocularItem",
	"addGoggles",
	"addHandgunItem",
	"addHeadgear",
	"addItem",
	"addItemToUniform",
	"addItemToVest",
	"addItemToBackpack",
	"addMagazine",
	"addMagazineGlobal",
	"addMagazines",
	"addPrimaryWeaponItem",
	"addSecondaryWeaponItem",
	"addUniform",
	"addVest",
	"addWeapon",
	"addWeaponGlobal",
	"addWeaponItem",
	"forceAddUniform",
	"addBackpack"
]; 

private _failed = [];

{
	private _func = _x;
	private _unit = createVehicle ["B_Soldier_F", [0,0,0], [], 0, "NONE"];
	
	private _script = format["_this %2 %3", _unit, _func, _classname];

	_unit call compile _script;

	if !(_classname in ((getUnitLoadout _unit)#0)) then {
		_failed pushBack _func;
	};

	deleteVehicle _unit;
} forEach _functions;


_failed;












private _i = ["Rand", ["SMG_03_black", "AW", 1], ["SMG_03_camo", "AW", 1]];
_i deleteAt 0;
private _commands = [];
{
	private _func = [_x#1] call VTG_fnc_convertAttributeToFunction;
	private _item = str(_x#0);
	private _check = "private _check = _this canAdd " + _item + ";";
	private _add = "_this " + _func + " " + _item + ";";
	private _checkRes = "if !(_check) then {hint ""Cant""};";
	private _textFunc = _check + _add + _checkRes; 
	_commands pushBack _textFunc;
}forEach _i;

private _random = selectRandom _commands;
private _script = compile _random;
player call _script;
