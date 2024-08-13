if (!isServer) exitWith {};private _removeEq = {
params["_u"];
removeAllWeapons _u;
removeAllItems _u;
removeAllAssignedItems _u;
removeUniform _u;
removeVest _u;
removeBackpack _u;
removeHeadgear _u;
removeGoggles _u;};
{_x call _removeEq} forEach allUnits;{_x forceAddUniform "U_C_IDAP_Man_shorts_F";_x forceAddUniform "U_C_IDAP_Man_casual_F";_x forceAddUniform "U_C_IDAP_Man_Jeans_F";"-";_x call compile (selectRandomWeighted ["_x addHeadgear ""H_HelmetHBK_F"";",1,"_x addHeadgear ""H_HelmetHBK_ear_F"";",1,"""-"";",1]);_x addWeapon "arifle_AK12_arid_F";_x call compile (selectRandomWeighted ["_x addWeaponItem [""arifle_AK12_arid_F"", ""optic_Arco_AK_arid_F"", true];",1,"_x addWeaponItem [""arifle_AK12_arid_F"", ""optic_Arco_lush_F"", true];",1,"""-"";",1]);}forEach (allUnits);