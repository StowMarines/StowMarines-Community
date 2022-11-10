player setVariable ["Saved_Loadout",getUnitLoadout player];

respawnPos = getposATL player;

_boxes = [box1, box2];

{[_X, ["UK3CB_B_Invisible","rhs_grenade_mkiiia1_mag","rhs_mag_fakel","rhssaf_mag_brk_m79","rhsgref_mag_rkg3em","rhssaf_mag_rshb_p98","rhs_mag_m7a3_cs","rhs_mag_mk3a2","rhs_grenade_m1939e_mag","rhs_grenade_m1939l_mag","optic_tws","optic_tws_mg","optic_Nightstalker","rhsusf_acc_anpas13gv1","B_Patrol_Respawn_bag_F","B_Respawn_Sleeping_bag_F","B_Respawn_TentA_F","B_Respawn_Sleeping_bag_blue_F","B_Respawn_Sleeping_bag_brown_F","B_Respawn_TentDome_F","MMG_01_tan_F","MMG_02_black_F","MMG_02_camo_F","MMG_02_sand_F","H_HelmetSpecO_ghex_F","H_HelmetSpecO_ocamo","H_HelmetCrew_O_ghex_F","H_HelmetLeaderO_ghex_F","H_HelmetLeaderO_ocamo","H_HelmetO_ViperSP_hex_F","H_HelmetO_ViperSP_ghex_F","H_HelmetO_ocamo","H_HelmetO_ghex_F","U_O_T_Soldier_F","U_O_CombatUniform_ocamo","U_O_T_Sniper_F","U_O_officer_noInsignia_hex_F","U_O_OfficerUniform_ocamo","U_O_T_Officer_F","U_O_SpecopsUniform_ocamo","U_O_V_Soldier_Viper_F","U_O_V_Soldier_Viper_hex_F","B_ViperHarness_ghex_F","B_ViperHarness_hex_F","B_ViperLightHarness_ghex_F","B_ViperLightHarness_hex_F","G_Goggles_VR","U_I_Protagonist_VR","U_C_Protagonist_VR","U_O_Protagonist_VR","U_B_Protagonist_VR","srifle_LRR_F","srifle_LRR_camo_F","srifle_LRR_tna_F","srifle_GM6_F","srifle_GM6_camo_F","srifle_GM6_ghex_F","rhs_weap_m82a1","srifle_DMR_02_F","srifle_DMR_02_camo_F","srifle_DMR_02_sniper_F","rhs_weap_t5000","arifle_ARX_blk_F","arifle_ARX_ghex_F","arifle_ARX_hex_F","hgun_esd_01_F","rhs_weap_tr8","ChemicalDetector_01_watch_F","rhs_tr8_periscope","rhs_tr8_periscope_pip","Laserdesignator_02_ghex_F","Laserdesignator_02","H_HelmetSpecO_blk","H_HelmetLeaderO_oucamo","H_HelmetO_oucamo","srifle_DMR_05_hex_F","MMG_01_hex_F","srifle_DMR_07_ghex_F","srifle_DMR_07_hex_F","arifle_CTAR_ghex_F","arifle_CTAR_hex_F","arifle_CTAR_GL_ghex_F","arifle_CTAR_GL_hex_F","arifle_CTARS_ghex_F","arifle_CTARS_hex_F","O_NVGoggles_ghex_F","O_NVGoggles_grn_F","O_NVGoggles_urb_F","O_NVGoggles_hex_F","launch_I_Titan_F","launch_I_Titan_eaf_F","launch_O_Titan_ghex_F","launch_O_Titan_F","launch_B_Titan_olive_F","launch_B_Titan_F","launch_B_Titan_tna_F","launch_O_Titan_short_F","launch_O_Titan_short_ghex_F","launch_I_Titan_short_F","launch_B_Titan_short_F","launch_B_Titan_short_tna_F","V_PlateCarrier_Kerry","arifle_Mk20_F","arifle_Mk20_GL_F","arifle_Mk20C_F","arifle_MSBS65_camo_F","arifle_MSBS65_GL_camo_F","arifle_MSBS65_Mark_camo_F","arifle_MSBS65_UBS_camo_F","rhs_weap_M107","rhs_weap_M107_d","rhs_weap_M107_w","H_HelmetAggressor_F","H_HelmetAggressor_cover_F","H_HelmetAggressor_cover_taiga_F","H_HelmetHBK_headset_F","H_HelmetHBK_chops_F","H_HelmetHBK_ear_F","H_HelmetHBK_F","H_HelmetB_TI_tna_F","H_HelmetB_TI_arid_F","H_HelmetIA","NVGogglesB_blk_F","NVGogglesB_grn_F","NVGogglesB_gry_F","ACE_NVG_Wide","NVGoggles_tna_F","ACE_NVG_Gen4","NVGoggles","NVGoggles_INDEP","ACE_NVG_Gen2","ACE_NVG_Gen1","NVGoggles_OPFOR","launch_MRAWS_green_rail_F","launch_MRAWS_olive_rail_F","launch_MRAWS_sand_rail_F","launch_MRAWS_green_F","launch_MRAWS_olive_F","launch_MRAWS_sand_F","launch_RPG32_F","launch_RPG32_ghex_F","launch_RPG32_green_F","launch_O_Vorona_green_F","launch_O_Vorona_brown_F","srifle_DMR_04_F","srifle_DMR_04_Tan_F"]] call ace_arsenal_fnc_removeVirtualItems;} forEach _boxes;

//Logistics Crate Guy
[logistics, 0, ["ACE_MainActions"], spawnCrate] call ace_interact_menu_fnc_addActionToObject; //Parent
[logistics, 0, ["ACE_MainActions","spawnCrate"], ammoCrate] call ace_interact_menu_fnc_addActionToObject;
[logistics, 0, ["ACE_MainActions","spawnCrate"], FSGCrate] call ace_interact_menu_fnc_addActionToObject;
[logistics, 0, ["ACE_MainActions","spawnCrate"], rocketsCrate] call ace_interact_menu_fnc_addActionToObject;
[logistics, 0, ["ACE_MainActions","spawnCrate"], missilesCrate] call ace_interact_menu_fnc_addActionToObject;
[logistics, 0, ["ACE_MainActions","spawnCrate"], explosivesCrate] call ace_interact_menu_fnc_addActionToObject;
[logistics, 0, ["ACE_MainActions","spawnCrate"], utilCrate] call ace_interact_menu_fnc_addActionToObject;
[logistics, 0, ["ACE_MainActions","spawnCrate"], jerry_W_Logi] call ace_interact_menu_fnc_addActionToObject;
[logistics, 0, ["ACE_MainActions","spawnCrate"], jerry_D_Logi] call ace_interact_menu_fnc_addActionToObject;
[logistics, 0, ["ACE_MainActions","spawnCrate"], vicAmmoCrate] call ace_interact_menu_fnc_addActionToObject;
[logistics, 0, ["ACE_MainActions","spawnCrate"], vicFuelCrate] call ace_interact_menu_fnc_addActionToObject;
[logistics, 0, ["ACE_MainActions","spawnCrate"], vicRepairCrate] call ace_interact_menu_fnc_addActionToObject;
[logistics, 0, ["ACE_MainActions","spawnCrate"], medCrate] call ace_interact_menu_fnc_addActionToObject;
[logistics, 0, ["ACE_MainActions","spawnCrate"], emptyCrate] call ace_interact_menu_fnc_addActionToObject;

while {true} do {
	waitUntil {(damage (vehicle player)) == 1};
	{moveOut _x;} forEach (crew (vehicle player));
	sleep 10;
};