private _function = param[0];
private _attribute = "";

switch (_function) do {
	case "linkItem": { _attribute = "LI" };
	case "addBackpackGlobal": { _attribute = "ABG" };
	case "addBinocularItem": { _attribute = "ABI" };
	case "addGoggles": { _attribute = "AG" };
	case "addHandgunItem": { _attribute = "AHI" };
	case "addHeadgear": { _attribute = "AH" };
	case "addItem": { _attribute = "AI" };
	case "addItemToUniform": { _attribute = "AIU" };
	case "addItemToVest": { _attribute = "AIV" };
	case "addItemToBackpack": { _attribute = "AIB" };
	case "addMagazine": { _attribute = "AM" };
	case "addMagazineGlobal": { _attribute = "AMG" };
	case "addMagazines": { _attribute = "AMS" };
	case "addPrimaryWeaponItem": { _attribute = "APWI" };
	case "addSecondaryWeaponItem": { _attribute = "ASWI" };
	case "addUniform": { _attribute = "AU" };
	case "addVest": { _attribute = "AV" };
	case "addWeapon": { _attribute = "AW" };
	case "addWeaponGlobal": { _attribute = "AWG" };
	case "addWeaponItem": { _attribute = "AWI" };
	case "forceAddUniform": { _attribute = "FAU" };
	case "addBackpack": { _attribute = "AB" };
	default { _attribute = "none" };
};

_attribute;