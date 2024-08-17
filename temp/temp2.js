[
  "%EMM_EXPORT%",
  [
    [
      "preset2",
      [
        [[[], "%EMM_MODULE%", "module1", 20000]],
        [
          [
            "module1",
            [
              ["all"],
              [
                [
                  "Rand",
                  ["rhs_uniform_6sh122_v2", "FAU", 1],
                  ["rhs_uniform_6sh122_gloves_v2", "FAU", 1],
                ],
              ],
            ],
          ],
        ],
      ],
    ],
    [
      "preset1",
      [
        [
          [[], "%EMM_FOLDER%", "all", 10000],
          [[0], "%EMM_MODULE%", "devices/items", 20006],
          [[0], "%EMM_MODULE%", "medicine", 20007],
          [[], "%EMM_FOLDER%", "blue", 10005],
          [[1], "%EMM_MODULE%", "b_helmets", 20001],
          [[1], "%EMM_MODULE%", "b_rifle", 20002],
          [[1], "%EMM_MODULE%", "b_unif", 20003],
          [[1], "%EMM_MODULE%", "b_vest", 20004],
          [[], "%EMM_FOLDER%", "red", 10012],
          [[2], "%EMM_MODULE%", "r_helmets", 20008],
          [[2], "%EMM_MODULE%", "r_rifle", 20009],
          [[2], "%EMM_MODULE%", "r_unif", 20010],
          [[2], "%EMM_MODULE%", "r_vest", 20011],
        ],
        [
          [
            "b_unif",
            [
              ["blue"],
              [
                [
                  "Rand",
                  ["U_B_CombatUniform_mcam", "FAU", 1],
                  ["rhs_uniform_acu_ucpd", "FAU", 1],
                  ["rhs_uniform_acu_oefcp", "FAU", 1],
                ],
              ],
            ],
          ],
          [
            "b_helmets",
            [
              ["blue"],
              [
                [
                  "Rand",
                  ["rhsusf_opscore_fg", "AH", 1],
                  ["rhsusf_opscore_mc_cover", "AH", 1],
                  ["rhsusf_opscore_rg_cover", "AH", 1],
                  ["rhsusf_opscore_ut", "AH", 1],
                ],
              ],
            ],
          ],
          [
            "r_rifle",
            [
              ["red"],
              [
                ["rhs_30Rnd_545x39_7N22_AK", "AM", 6],
                [
                  "Rand",
                  ["rhs_weap_ak74m", "AW", 1],
                  ["rhs_weap_ak74m_zenitco01", "AW", 1],
                  ["rhs_weap_ak74mr", "AW", 1],
                ],
              ],
            ],
          ],
          [
            "devices/items",
            [
              ["all"],
              [
                [
                  "Rand",
                  ["rhsusf_radio_anprc152", "LI", 1],
                  ["ItemWatch", "LI", 1],
                  ["ItemGPS", "LI", 1],
                  ["ItemMap", "LI", 1],
                ],
                ["ACE_CableTie", "AIU", 1],
              ],
            ],
          ],
          [
            "r_helmets",
            [
              ["red"],
              [
                [
                  "Rand",
                  ["rhs_6b47", "AH", 1],
                  ["rhs_6b47_6m2_1", "AH", 1],
                  ["rhs_6b47_6m2", "AH", 1],
                  ["rhs_6b47_emr", "AH", 1],
                ],
              ],
            ],
          ],
          [
            "r_unif",
            [
              ["red"],
              [
                [
                  "Rand",
                  ["rhs_uniform_gorka_r_g", "FAU", 1],
                  ["rhs_uniform_gorka_r_y", "FAU", 1],
                  ["rhs_uniform_6sh122_v2", "FAU", 1],
                  ["rhs_uniform_emr_patchless", "FAU", 2],
                ],
              ],
            ],
          ],
          [
            "r_vest",
            [
              ["red"],
              [
                [
                  "Rand",
                  ["rhs_6b45_rifleman", "AV", 1],
                  ["rhs_6b45_rifleman_2", "AV", 1],
                  ["rhs_6b45_off", "AV", 1],
                ],
                ["rhs_mag_rgd5", "AM", 2],
              ],
            ],
          ],
          [
            "b_rifle",
            [
              ["blue"],
              [
                ["rhs_mag_30Rnd_556x45_M855_Stanag", "AM", 5],
                ["Rand", ["rhs_weap_m16a4", "AW", 1], ["rhs_weap_m4", "AW", 1]],
                ["optic_Holosight_blk_F", "APWI", 1],
                ["%NO_ITEM%Accessories/Sights", "none", 1],
                ["rhsusf_acc_compm4", "APWI", 1],
              ],
            ],
          ],
          [
            "b_vest",
            [
              ["blue"],
              [
                [
                  "Rand",
                  ["rhsusf_mbav_grenadier", "AV", 1],
                  ["rhsusf_mbav_rifleman", "AV", 4],
                  ["rhsusf_iotv_ocp_Rifleman", "AV", 2],
                  ["rhsusf_iotv_ucp_Rifleman", "AV", 1],
                ],
                ["rhs_mag_m67", "AIV", 2],
              ],
            ],
          ],
          [
            "medicine",
            [
              ["all"],
              [
                ["ACE_morphine", "AIU", 2],
                ["ACE_tourniquet", "AIU", 2],
                ["ACE_packingBandage", "AIU", 3],
                ["ACE_elasticBandage", "AIU", 3],
                ["ACE_fieldDressing", "AIU", 3],
              ],
            ],
          ],
        ],
      ],
    ],
  ],
];
