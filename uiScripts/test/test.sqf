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