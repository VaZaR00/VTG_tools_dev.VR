player addEventHandler ["Fired", {
	(_this select 0) setVehicleAmmo 1
}]

[_result, "test result"] call BIS_fnc_3DENShowMessage;

[text, type, duration, animate] call EMM_fnc_message;

{
	_x set3DENAttribute ["description", "man"];
}forEach allUnits;

{
	_x setVariable ["OriginalRoleDesc", nil];
}forEach allUnits;

 /*
	_createModule = {
		_script = param[0];
		
		    _crewControlModule = create3DENEntity ["Logic", "Logic", [0, 0, 0]];
		
		    _crewControlModule set3DENAttribute ["Name", "EMM_fnc_CrewControlScript"];
		    _crewControlModule set3DENAttribute ["Init", _script];
	};
*/

_w = "GF_deformMission" get3DENMissionAttribute "GF_deformString";

"GF_deformMission" set3DENMissionAttribute ["GF_deformString", ""];

if (!isServer) exitWith {};
{
	_x addWeapon "arifle_AK12U_arid_F";
	_x addWeaponItem ["arifle_AK12U_arid_F", "acc_flashlight", true];
	_x call compile (selectRandom ["_x addWeaponItem [, ""muzzle_snds_B"", true];","_x addWeaponItem [, ""muzzle_snds_B_arid_F"", true];"]);
	_x addVest "V_PlateCarrierGL_mtp";
}forEach (allUnits);



comment "Exported from Arsenal by [J] Vazar";

comment "[!] UNIT MUST BE LOCAL [!]";
if (!local this) exitWith {};

comment "Remove existing items";


comment "Add weapons";
this addWeapon "SMG_03C_hex";
this addPrimaryWeaponItem "muzzle_snds_570";
this addPrimaryWeaponItem "50Rnd_570x28_SMG_03";

comment "Add containers";
this forceAddUniform "U_B_CombatUniform_mcam_tshirt";
this addVest "V_Chestrig_rgr";
this addBackpack "B_Carryall_khk";

comment "Add items to containers";
for "_i" from 1 to 3 do {this addItemToUniform "50Rnd_570x28_SMG_03";};
this addHeadgear "H_HelmetB_camo";

comment "Set identity";
[this,"PersianHead_A3_03","male02per"] call BIS_fnc_setIdentity;



mk  -  Crewman [O_crew_F]  -  APR (Black) [CSAT] [G_AirPurifyingRespirator_02_black_F]
