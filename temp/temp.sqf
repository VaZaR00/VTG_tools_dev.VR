if (!isServer) exitWith {};[] spawn {private _removeEq = {
params["_u"];
removeAllWeapons _u;
removeAllItems _u;
removeAllAssignedItems _u;
removeUniform _u;
removeVest _u;
removeBackpack _u;
removeHeadgear _u;
removeGoggles _u;};
{_x call _removeEq} forEach allUnits; {_x call compile (selectRandomWeighted ["_x forceAddUniform ""U_I_C_Soldier_Bandit_4_F"";",1,"_x forceAddUniform ""U_C_IDAP_Man_Tee_F"";",1]);}forEach (allUnits); {_x call compile (selectRandomWeighted ["_x forceAddUniform ""U_C_IDAP_Man_TeeShorts_F"";",1,"_x forceAddUniform ""U_C_IDAP_Man_shorts_F"";",1]);}forEach (allUnits);};