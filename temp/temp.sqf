private _removeEq = {
params["_u"];
removeAllWeapons _u;
removeAllItems _u;
removeAllAssignedItems _u;
removeUniform _u;
removeVest _u;
removeBackpack _u;
removeHeadgear _u;
removeGoggles _u;};
{_x call _removeEq} forEach allUnits;{if((uniform _x)=='')then{_x forceAddUniform "U_C_CBRN_Suit_01_White_F";}else{EMM_EQUIP_TEST_FAILED_ARR pushBack ["u", _x, "U_C_CBRN_Suit_01_White_F"]};}forEach ((allUnits select {(typeOf _x) in ["B_Soldier_GL_F","B_soldier_AR_F","C_Man_casual_4_v2_F"]})- ([356,361] apply { (get3DENEntity _x) get3DENAttribute 'name' }));