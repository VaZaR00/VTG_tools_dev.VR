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
{_x call _removeEq} forEach allUnits;{_x call compile (selectRandomWeighted ["_x addWeapon ""arifle_AKM_F"";_x addWeapon ""sgun_HunterShotgun_01_F"";",1,"_x addWeapon ""SMG_03_khaki"";",1]);}forEach (allUnits);


[
  ["all"],
  [
    [
      "Rand",
      [
        "comp$$c1",
        "none",
        1,
        [
          ["comp$$c3", "none", 1],
          ["comp$$c5", "none", 1],
        ],
      ],
      ["comp$$c2", "none", 1, [["comp$$c4", "none", 1]]],
    ],
  ],
];
