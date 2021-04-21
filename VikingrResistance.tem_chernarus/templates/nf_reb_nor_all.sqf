////////////////////////////////////
//       NAMES AND FLAGS         ///
////////////////////////////////////
nameTeamPlayer = "Vikinger";
SDKFlag = "NORTH_Flag_NOR";
SDKFlagTexture = "NORTH\NF_Misc_Objects\flags\data\flag_nor_co.paa"; if (isServer) then {flagX setFlagTexture SDKFlagTexture};
typePetros = "I_NORTH_NOR_Officer";

////////////////////////////////////
//             UNITS             ///
////////////////////////////////////
//First Entry is Guerilla, Second Entry is Para/Military
staticCrewTeamPlayer = "I_NORTH_NOR_Unequipped";
SDKUnarmed = "I_NORTH_NOR_Unequipped";
SDKSniper = ["I_NORTH_NOR_Sniper","I_NORTH_NOR_Sniper"];
SDKATman = ["I_NORTH_NOR_Antitank","I_NORTH_NOR_Antitank"];
SDKMedic = ["I_NORTH_NOR_Medic","I_NORTH_NOR_Medic"];
SDKMG = ["I_NORTH_NOR_Machinegunner","I_NORTH_NOR_Machinegunner"];
SDKExp = ["I_NORTH_NOR_Engineer","I_NORTH_NOR_Engineer"];
SDKGL = ["I_NORTH_NOR_Radioman","I_NORTH_NOR_Radioman"];
SDKMil = ["I_NORTH_NOR_Rifleman","I_NORTH_NOR_Rifleman"];
SDKSL = ["I_NORTH_NOR_Rifleman_SGT","I_NORTH_NOR_Rifleman_SGT"];
SDKEng = ["I_NORTH_NOR_Engineer","I_NORTH_NOR_Engineer"];

////////////////////////////////////
//            GROUPS             ///
////////////////////////////////////
groupsSDKmid = [SDKSL,SDKGL,SDKMG,SDKMil];
groupsSDKAT = [SDKSL,SDKMG,SDKATman,SDKATman,SDKATman];
groupsSDKSquad = [SDKSL,SDKGL,SDKMil,SDKMG,SDKMil,SDKATman,SDKMil,SDKMedic];
groupsSDKSquadEng = [SDKSL,SDKGL,SDKMil,SDKMG,SDKExp,SDKATman,SDKEng,SDKMedic];
groupsSDKSquadSupp = [SDKSL,SDKGL,SDKMil,SDKMG,SDKATman,SDKMedic,[staticCrewTeamPlayer,staticCrewTeamPlayer],[staticCrewTeamPlayer,staticCrewTeamPlayer]];
groupsSDKSniper = [SDKSniper,SDKSniper];
groupsSDKSentry = [SDKGL,SDKMil];

//Rebel Unit Tiers (for costs)
sdkTier1 = SDKMil + [staticCrewTeamPlayer] + SDKMG + SDKGL + SDKATman;
sdkTier2 = SDKMedic + SDKExp + SDKEng;
sdkTier3 = SDKSL + SDKSniper;
soldiersSDK = sdkTier1 + sdkTier2 + sdkTier3;

////////////////////////////////////
//           VEHICLES            ///
////////////////////////////////////
//Military Vehicles
vehSDKBike = "fow_v_truppenfahrrad_ger_heer";
vehSDKLightArmed = "LIB_UK_Willys_MB_M1919";
vehSDKAT = "not_supported";
vehSDKLightUnarmed = "LIB_US_Willys_MB";
vehSDKTruck = "LIB_US6_Tent";
//vehSDKHeli = "I_C_Heli_Light_01_civil_F";
vehSDKPlane = "LIB_RAF_P39";
vehSDKBoat = "LIB_UK_LCA";
vehSDKRepair = "LIB_Zis6_Parm";

//Civilian Vehicles
civCar = "LIB_GazM1_dirty";
civTruck = "LIB_Zis5v";
civHeli = "not_supported";
civBoat = "not_supported";

////////////////////////////////////
//        STATIC WEAPONS         ///
////////////////////////////////////
//Assembled Static Weapons
SDKMGStatic = "LIB_M1919_M2";
staticATteamPlayer = "LIB_Pak40";
staticAAteamPlayer = "LIB_FlaK_38";
SDKMortar = "LIB_M2_60";
SDKMortarHEMag = "LIB_8Rnd_60mmHE_M2";
SDKMortarSmokeMag = "not_supported";

//Static Weapon Bags
MGStaticSDKB = "not_supported";
ATStaticSDKB = "not_supported";
AAStaticSDKB = "not_supported";
MortStaticSDKB = "not_supported";
//Short Support
supportStaticSDKB = "not_supported";
//Tall Support
supportStaticsSDKB2 = "not_supported";
//Mortar Support
supportStaticsSDKB3 = "not_supported";

////////////////////////////////////
//             ITEMS             ///
////////////////////////////////////
//Mines
ATMineMag = "LIB_TMI_42_MINE_mag";
APERSMineMag = "LIB_shumine_42_MINE_mag";

//Breaching explosives
//Breaching APCs needs one demo charge
breachingExplosivesAPC = [["LIB_Ladung_Small_MINE_mag", 1]];
//Breaching tanks needs one satchel charge or two demo charges
breachingExplosivesTank = [["LIB_Ladung_Big_MINE_mag", 1], ["LIB_Ladung_Small_MINE_mag", 2]];

//Starting Unlocks

// Primary Weapons
initialRebelEquipment append ["NORTH_sten","NORTH_nor_krag1894"];
initialRebelEquipment append ["NORTH_fin_m39"];
initialRebelEquipment append ["LIB_K98","fow_w_m1903A1"];
initialRebelEquipment append ["fow_w_M1912"];
//initialRebelEquipment append ["fow_w_m1903A1_sniper","NORTH_fin_m39_PEM"];

// Launchers
initialRebelEquipment append ["LIB_Bagpipes"];
	
// Secondary Weapons
initialRebelEquipment append ["fow_w_webley"];
initialRebelEquipment append ["NORTH_TT33","NORTH_m1893", "NORTH_l35"];
// Uniform
/*
initialRebelEquipment append ["U_LIB_CIV_Citizen_1","U_LIB_CIV_Citizen_2","U_LIB_CIV_Citizen_3","U_LIB_CIV_Citizen_4","U_LIB_CIV_Citizen_5","U_LIB_CIV_Citizen_6","U_LIB_CIV_Citizen_7","U_LIB_CIV_Citizen_8"];
initialRebelEquipment append ["U_LIB_CIV_Functionary_1","U_LIB_CIV_Functionary_2","U_LIB_CIV_Functionary_3","U_LIB_CIV_Functionary_4"];
initialRebelEquipment append ["U_LIB_CIV_Priest","U_LIB_CIV_Rocker_1","U_LIB_CIV_Schoolteacher"];
initialRebelEquipment append ["U_NORTH_CIV_Wool_1","U_NORTH_CIV_Wool_2","U_NORTH_CIV_Wool_3","U_NORTH_CIV_Wool_4","U_NORTH_CIV_Wool_5","U_NORTH_CIV_Wool_6","U_NORTH_CIV_Wool_7"];
initialRebelEquipment append ["U_NORTH_CIV_Jacket_1","U_NORTH_CIV_Jacket_2","U_NORTH_CIV_Jacket_3","U_NORTH_CIV_Jacket_4","U_NORTH_CIV_Jacket_5","U_NORTH_CIV_Jacket_6","U_NORTH_CIV_Jacket_7","U_NORTH_CIV_Jacket_8","U_NORTH_CIV_Jacket_9","U_NORTH_CIV_Jacket_10","U_NORTH_CIV_Jacket_11","U_NORTH_CIV_Jacket_12"];
initialRebelEquipment append ["U_LIB_CIV_Woodlander_1","U_LIB_CIV_Woodlander_2","U_LIB_CIV_Woodlander_3","U_LIB_CIV_Woodlander_4"];
*/

initialRebelEquipment append ["U_LIB_UK_KhakiDrills","U_LIB_UK_DenisonSmock","U_LIB_UK_P37","U_LIB_US_AB_Uniform_M42","U_LIB_US_Bomber_Pilot","U_LIB_US_Pilot","U_LIB_US_Tank_Crew","U_LIB_US_Tank_Crew2"];
initialRebelEquipment append ["fow_u_aus_m37_02_private","fow_u_aus_m37_03_private","fow_u_hi_m35_02_private"];

initialRebelEquipment append ["U_NORTH_FIN_M22_36_Greatcoat_COL","U_NORTH_FIN_M30_Greatcoat_Private"];

initialRebelEquipment append ["U_NORTH_NOR_I_Uniform","U_NORTH_NOR_I_Uniform1","U_NORTH_NOR_I_Uniform2","U_NORTH_NOR_I_Uniform3","U_NORTH_NOR_I_Uniform4","U_NORTH_NOR_I_Uniform_Sergeant","U_NORTH_NOR_I_Uniform_Specialist"];
// Vests
initialRebelEquipment append ["V_NORTH_Nor_Belt","V_NORTH_Nor_Belt_Madsen14","V_NORTH_Nor_Belt_Madsen22","V_NORTH_Nor_Belt_Officer","V_NORTH_Nor_Belt_Krag"];
initialRebelEquipment append ["fow_v_us_garand","fow_v_us_garand_bandoleer","fow_v_us_medic","fow_v_us_bar","fow_v_us_ab_grenade"];
initialRebelEquipment append ["fow_v_uk_base","fow_v_uk_base_green"];
initialRebelEquipment append ["fow_v_ija_rifle","fow_v_ija_nco","fow_v_ija_officer","fow_v_ija_medic"];
initialRebelEquipment append ["V_LIB_UK_P37_Rifleman","V_LIB_UK_P37_Gasmask","V_LIB_UK_P37_Heavy"];
initialRebelEquipment append ["V_LIB_UK_P37_Rifleman_Blanco","V_LIB_UK_P37_Gasmask_Blanco","V_LIB_UK_P37_Heavy_Blanco"];
initialRebelEquipment append ["V_LIB_WP_SniperBela"];
// Backpacks
initialRebelEquipment append ["NORTH_fin_BreadBag","NORTH_fin_BreadBag2","NORTH_fin_BreadBag3","NORTH_fin_MolotovBag","NORTH_fin_PanzerschreckFrame","NORTH_fin_Sipuli"];
initialRebelEquipment append ["NORTH_fin_Kyynel","fow_b_torn_radio","fow_b_us_radio","fow_b_uk_p37_radio","fow_b_uk_p37_radio_blanco","B_LIB_US_Radio"];
initialRebelEquipment append ["NORTH_nor_MadsenBag","NORTH_nor_Telemark","NORTH_SOV_M35bpk","NORTH_SOV_M38bpk"];

initialRebelEquipment append ["fow_b_tornister_medic","B_LIB_GER_Tonister34_cowhide"];
initialRebelEquipment append ["fow_b_uk_bergenpack","fow_b_uk_p37","fow_b_uk_p37_blanco","fow_b_uk_p37_shovel","fow_b_uk_p37_blanco_shovel"];
initialRebelEquipment append ["fow_b_us_m1928","fow_b_us_rocket_bag","fow_b_usmc_m1928"];
initialRebelEquipment append ["fow_b_parachute"];
// Head
initialRebelEquipment append ["H_NORTH_Nor_Fieldcap","H_NORTH_NOR_Kepi","H_NORTH_NOR_Kepi_Sersjant","H_NORTH_NOR_Kepi_Fenrik","H_NORTH_NOR_Kepi_Kaptein","H_NORTH_NOR_Kepi_Loytant"];
initialRebelEquipment append ["fow_h_hi_beret","fow_h_hi_beret_headset","fow_h_hi_officer_cap"];
initialRebelEquipment append ["fow_h_uk_beret","fow_h_uk_beret_commando","fow_h_uk_beret_commando_nor","fow_h_uk_beret_para","fow_h_uk_pib_beret","fow_h_uk_beret_rtr","fow_h_uk_beret_rtr_headset","fow_h_uk_beret_sas_2","H_LIB_UK_Pilot_Cap"];
initialRebelEquipment append ["fow_h_uk_jungle_hat_01","fow_h_uk_jungle_hat_02","fow_h_uk_jungle_hat_03"];
initialRebelEquipment append ["H_LIB_CIV_Villager_Cap_1","H_LIB_CIV_Worker_Cap_1","H_LIB_CIV_Worker_Cap_2","H_LIB_CIV_Worker_Cap_3","H_LIB_CIV_Worker_Cap_4"];
initialRebelEquipment append ["H_NORTH_Fedora_B1","H_NORTH_Fedora_B2","H_NORTH_Fedora_B","H_NORTH_Fedora_Br","H_NORTH_Fedora","H_NORTH_Fedora_0","H_NORTH_Fedora_W"];
initialRebelEquipment append ["H_NORTH_Homburg_Bl","H_NORTH_Homburg_B","H_NORTH_Homburg_Br","H_NORTH_Homburg"];
initialRebelEquipment append ["H_NORTH_Workercap_Be","H_NORTH_Workercap_Bl","H_NORTH_Workercap","H_NORTH_Workercap_G","H_NORTH_Workercap_R"];
initialRebelEquipment append ["H_NORTH_FIN_M22_Furhat","H_NORTH_FIN_M22_Furhat_officer","H_NORTH_FIN_M27_furhat","H_NORTH_FIN_M39_furhat_biege","H_NORTH_FIN_M39_furhat_biege_open","H_NORTH_FIN_M27_civilguardhat","H_NORTH_FIN_M36_fieldcap","H_NORTH_FIN_M36_fieldcap_worn_reversed"];
// Face
initialRebelEquipment append ["fow_g_glasses1","fow_g_glasses2","fow_g_glasses3","fow_g_glasses4"];
initialRebelEquipment append ["fow_g_gloves1","fow_g_gloves2","fow_g_gloves3","fow_g_gloves4","fow_g_gloves5","fow_g_gloves6"];
initialRebelEquipment append ["fow_g_watch1","fow_g_watch2"];
initialRebelEquipment append ["G_LIB_Binoculars","G_LIB_Dust_Goggles"];
initialRebelEquipment append ["G_LIB_GER_Headset","G_LIB_Headwrap","G_LIB_Headwrap_gloves","G_LIB_Mohawk"];
initialRebelEquipment append ["G_NORTH_FIN_Glasses_2","G_NORTH_FIN_Medicalarmband"];
initialRebelEquipment append ["G_NORTH_FIN_Scarf","G_NORTH_FIN_Scarf_2","G_NORTH_FIN_Scarf_3","G_NORTH_FIN_Scarf_4","G_NORTH_FIN_Scarf_5"];
initialRebelEquipment append ["G_NORTH_FIN_Scarf_Small","G_NORTH_FIN_Scarf_Small_2","G_NORTH_FIN_Scarf_Small_3","G_NORTH_FIN_Scarf_Small_4"];
initialRebelEquipment append ["NORTH_Armband_NorRes1","NORTH_Armband_NorRes2","NORTH_Armband_NorRes3"];
// NVG
initialRebelEquipment append ["fow_i_nvg_GER_ammo_belt","LIB_GER_Headset"];
initialRebelEquipment append ["LIB_GER_Gloves1","LIB_GER_Gloves2","LIB_GER_Gloves3","LIB_GER_Gloves4"];
initialRebelEquipment append ["LIB_Headwrap","LIB_Headwrap_gloves","LIB_Mohawk"];
initialRebelEquipment append ["G_NORTH_FIN_Gloves_leather","G_NORTH_FIN_Gloves_leather_2","G_NORTH_FIN_Gloves","G_NORTH_FIN_Gloves_2","G_NORTH_FIN_Gloves_3","G_NORTH_FIN_Gloves_4"];
// Bino
initialRebelEquipment append ["NORTH_Binocular_Huet","fow_i_dienstglas","LIB_Binocular_GER","LIB_Binocular_UK","LIB_Binocular_SU"];
// Nav
initialRebelEquipment append ["LIB_GER_ItemCompass_deg"];
// Watch
initialRebelEquipment append ["LIB_GER_ItemWatch"];
// Ammo
initialRebelEquipment append ["NORTH_5Rnd_m39_mag","LIB_5Rnd_762x54"];
initialRebelEquipment append ["LIB_5Rnd_762x63","fow_5Rnd_762x63"];
initialRebelEquipment append ["LIB_5Rnd_792x57","fow_5Rnd_792x57"];
initialRebelEquipment append ["NORTH_5Rnd_krag_bullets","NORTH_32rnd_sten_mag"];
initialRebelEquipment append ["fow_6Rnd_12G_Pellets","fow_6Rnd_12G_Slug"];
// Pistol Ammo
initialRebelEquipment append ["fow_6Rnd_455","NORTH_6Rnd_m1893_mag","NORTH_8Rnd_tt33_mag","NORTH_8Rnd_l35_mag"];
//just stuff
initialRebelEquipment append ["fow_i_whistle"];
initialRebelEquipment append ["LIB_ToolKit"];
initialRebelEquipment append ["ACE_LIB_LandungPM"];
initialRebelEquipment append ["NORTH_molotov_NOR","NORTH_NOR_IMPROV_GRENADE","NORTH_NOR_IMPROV_SMOKE"];
//TFAR Unlocks
if (hasTFAR && startWithLongRangeRadio) then {initialRebelEquipment pushBack "B_LIB_US_Radio"};

// found something called fakemag floating around in arsenal... so just in case this has any effect:
initialRebelEquipment deleteAt (initialRebelEquipment find "fakemag");