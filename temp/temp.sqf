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
{_x call _removeEq} forEach allUnits; {_x call compile (selectRandomWeighted ["_x forceAddUniform ""U_C_IDAP_Man_shorts_F"";",1,"_x forceAddUniform ""U_C_IDAP_Man_Jeans_F"";",1,"_x forceAddUniform ""U_C_IDAP_Man_TeeShorts_F"";",1]);}forEach (allUnits select {(typeOf _x) == "B_MRAP_01_F"});



[
	"g",
	[
		["B_MRAP_01_F"],
		[["Rand",["U_C_IDAP_Man_shorts_F","FAU",1],["U_C_IDAP_Man_Jeans_F","FAU",1],["U_C_IDAP_Man_TeeShorts_F","FAU",1]]],
		1
	]
]