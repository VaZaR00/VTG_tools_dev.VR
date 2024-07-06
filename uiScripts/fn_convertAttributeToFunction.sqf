private _attribute = param[0];
private _command = "";

switch (_attribute) do {
	case "LI": { _command = "linkItem" };
	case "ABG": { _command = "addBackpackGlobal" };
	case "ABI": { _command = "addBinocularItem" };
	case "AG": { _command = "addGoggles" };
	case "AHI": { _command = "addHandgunItem" };
	case "AH": { _command = "addHeadgear" };
	case "AI": { _command = "addItem" };
	case "AIU": { _command = "addItemToUniform" };
	case "AIV": { _command = "addItemToVest" };
	case "AIB": { _command = "addItemToBackpack" };
	case "AM": { _command = "addMagazine" };
	case "AMG": { _command = "addMagazineGlobal" };
	case "AMS": { _command = "addMagazines" };
	case "APWI": { _command = "addPrimaryWeaponItem" };
	case "ASWI": { _command = "addSecondaryWeaponItem" };
	case "AU": { _command = "addUniform" };
	case "AV": { _command = "addVest" };
	case "AW": { _command = "addWeapon" };
	case "AWG": { _command = "addWeaponGlobal" };
	case "AWI": { _command = "addWeaponItem" };
	case "FAU": { _command = "forceAddUniform" };
	case "AB": { _command = "addBackpack" };
	default { _command = "none" };
};

_command; 