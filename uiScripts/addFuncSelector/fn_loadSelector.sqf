params["_display"];
private _combo = _display displayCtrl 2100;

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

{
	_combo lbAdd _x;
} forEach _functions;