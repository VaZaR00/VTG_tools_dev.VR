private _removeEq = {
params[""_u""];
removeAllWeapons _u;
removeAllItems _u;
removeAllAssignedItems _u;
removeUniform _u;
removeVest _u;
removeBackpack _u;
removeHeadgear _u;
removeGoggles _u;};
{_x call _removeEq} forEach allUnits;
{if((uniform _x)=='')then{_x addUniform ""U_B_CombatUniform_mcam_wdl_f"";}else{EMM_EQUIP_TEST_FAILED_ARR pushBack [_x, ""U_B_CombatUniform_mcam_wdl_f""]};if((vest _x)=='')then{_x addVest ""V_PlateCarrierGL_rgr"";}else{EMM_EQUIP_TEST_FAILED_ARR pushBack [_x, ""V_PlateCarrierGL_rgr""]};if((backpack _x)=='')then{_x addBackpack ""B_AssaultPack_dgtl"";}else{EMM_EQUIP_TEST_FAILED_ARR pushBack [_x, ""B_AssaultPack_dgtl""]};if((headgear _x)=='')then{_x addHeadgear ""H_HelmetHBK_headset_F"";}else{EMM_EQUIP_TEST_FAILED_ARR pushBack [_x, ""H_HelmetHBK_headset_F""]};if((primaryWeapon _x)=='')then{_x addWeapon ""SMG_03_black"";}else{EMM_EQUIP_TEST_FAILED_ARR pushBack [_x, ""SMG_03_black""]};}forEach (allUnits);