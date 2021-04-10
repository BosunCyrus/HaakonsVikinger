////////////////////////////////////
//      Uniforms Sorting        ///
////////////////////////////////////
{
	private _originUnit = getText (configfile >> "CfgWeapons" >> _x >> "ItemInfo" >> "uniformClass");
	private _uniformSide = getNumber (configfile >> "CfgVehicles" >> _originUnit >> "side");
	switch (_uniformSide) do {
		case 3: {allCivilianUniforms pushBack _x};
	};
} forEach allUniforms;

{
	private _originUnit = getText (configfile >> "CfgWeapons" >> _x >> "ItemInfo" >> "uniformClass");
	private _uniformFaction = getText (configfile >> "CfgVehicles" >> _originUnit >> "faction");
	switch (_uniformFaction) do {
		//RHS
		case "rhsgref_faction_nationalist": {if ((!has3CB) and nameTeamPlayer isEqualTo "NAPA") then {allRebelUniforms pushBack _x};};
		case "rhsgref_faction_hidf": {if ((!has3CB) and nameTeamPlayer isEqualTo "Rebels") then {allRebelUniforms pushBack _x};};
		//3CB These dont actually work, added TKM manually in Template, CCM Uniforms are the same as the Civilian ones.
		//case "UK3CB_CCM_I": {if (teamPlayer isEqualTo resistance) then {allRebelUniforms pushBack _x};};
		//case "UK3CB_TKM_B": {if (teamPlayer isEqualTo west) then {allRebelUniforms pushBack _x};};
		//IFA
		case "NORTH_NOR": {if (hasIFA) then {allRebelUniforms pushBack _x};};
		//Tanoa/ApexDLC
		case "IND_C_F": {if ((!hasIFA) and teamPlayer isEqualTo resistance) then {allRebelUniforms pushBack _x};};
		//Contact DLC Looters
		case "IND_L_F": {if ((!hasIFA) and teamPlayer isEqualTo resistance) then {allRebelUniforms pushBack _x};};
		//BLUFOR used because O/I Gueriilla uniforms 'scope' = 1 ----> Added Green Via Templates.
		case "BLU_G_F": {if ((!hasIFA) and teamPlayer isEqualTo west) then {allRebelUniforms pushBack _x};};
	};
} forEach allUniforms;

allCivilianUniforms deleteAt (allCivilianUniforms find "U_C_Protagonist_VR");
allCivilianUniforms deleteAt (allCivilianUniforms find "U_LIB_CIV_Priest");
allCivilianUniforms deleteAt (allCivilianUniforms find "U_C_PriestBody");
allCivilianUniforms deleteAt (allCivilianUniforms find "UK3CB_CHC_B_U_PRIEST_03");
allCivilianUniforms deleteAt (allCivilianUniforms find "UK3CB_CHC_B_U_PRIEST_02");
allCivilianUniforms deleteAt (allCivilianUniforms find "UK3CB_CHC_B_U_PRIEST_01");
allCivilianUniforms deleteAt (allCivilianUniforms find "UK3CB_CHC_C_U_PRIEST_03");
allCivilianUniforms deleteAt (allCivilianUniforms find "UK3CB_CHC_C_U_PRIEST_02");
allCivilianUniforms deleteAt (allCivilianUniforms find "UK3CB_CHC_C_U_PRIEST_01");
allCivilianUniforms deleteAt (allCivilianUniforms find "UK3CB_CHC_I_U_PRIEST_03");
allCivilianUniforms deleteAt (allCivilianUniforms find "UK3CB_CHC_I_U_PRIEST_02");
allCivilianUniforms deleteAt (allCivilianUniforms find "UK3CB_CHC_I_U_PRIEST_01");
allCivilianUniforms deleteAt (allCivilianUniforms find "UK3CB_CHC_O_U_PRIEST_03");
allCivilianUniforms deleteAt (allCivilianUniforms find "UK3CB_CHC_O_U_PRIEST_02");
allCivilianUniforms deleteAt (allCivilianUniforms find "UK3CB_CHC_O_U_PRIEST_01");
allCivilianUniforms deleteAt (allCivilianUniforms find "gm_ge_pol_uniform_suit_80_grn");	//Gmob PoliceUniform
allCivilianUniforms deleteAt (allCivilianUniforms find "gm_gc_pol_uniform_dress_80_blu");
allCivilianUniforms deleteAt (allCivilianUniforms find "gm_ge_pol_uniform_blouse_80_blk");
allCivilianUniforms deleteAt (allCivilianUniforms find "gm_ge_ff_uniform_man_80_orn");	//Gmob Firefighter
allCivilianUniforms deleteAt (allCivilianUniforms find "U_I_L_Uniform_01_camo_F");	//LDF Deserter Jacket
allCivilianUniforms deleteAt (allCivilianUniforms find "U_I_L_Uniform_01_deserter_F");	//LDF Desserter T-Shirt
allCivilianUniforms deleteAt (allCivilianUniforms find "U_I_L_Uniform_01_tshirt_olive_F"); //Looter Clothes (T-Shirt Olive)
allCivilianUniforms deleteAt (allCivilianUniforms find "U_I_L_Uniform_01_tshirt_sport_F"); //Looter Clothes (T-Shirt Sport)
allCivilianUniforms deleteAt (allCivilianUniforms find "U_I_L_Uniform_01_tshirt_black_F"); //Looter Clothes (T-Shirt Black)
allCivilianUniforms deleteAt (allCivilianUniforms find "U_I_L_Uniform_01_tshirt_skull_F"); //Looter Clothes (T-Shirt Skull)
allCivilianUniforms deleteAt (allCivilianUniforms find "U_C_IDAP_Man_shorts_F");	//Idap Worker Uniforms
allCivilianUniforms deleteAt (allCivilianUniforms find "U_C_IDAP_Man_casual_F");
allCivilianUniforms deleteAt (allCivilianUniforms find "U_C_IDAP_Man_cargo_F");
allCivilianUniforms deleteAt (allCivilianUniforms find "U_C_IDAP_Man_Tee_F");
allCivilianUniforms deleteAt (allCivilianUniforms find "U_C_IDAP_Man_Jeans_F");
allCivilianUniforms deleteAt (allCivilianUniforms find "U_C_IDAP_Man_TeeShorts_F");
allRebelUniforms deleteAt (allRebelUniforms find "U_I_G_Story_Protagonist_F");
allRebelUniforms deleteAt (allRebelUniforms find "U_BG_Guerilla1_2_F");
allRebelUniforms deleteAt (allRebelUniforms find "U_I_G_resistanceLeader_F");
allRebelUniforms deleteAt (allRebelUniforms find "UK3CB_CW_US_B_LATE_U_SF_CombatUniform_01_BLK");
allRebelUniforms deleteAt (allRebelUniforms find "UK3CB_CW_US_B_LATE_U_SF_CombatUniform_02_BLK");

//Delete for NF
allCivilianUniforms deleteAt (allCivilianUniforms find "U_C_ArtTShirt_01_v1_F");
allCivilianUniforms deleteAt (allCivilianUniforms find "U_C_ArtTShirt_01_v2_F");
allCivilianUniforms deleteAt (allCivilianUniforms find "U_C_ArtTShirt_01_v3_F");
allCivilianUniforms deleteAt (allCivilianUniforms find "U_C_ArtTShirt_01_v4_F");
allCivilianUniforms deleteAt (allCivilianUniforms find "U_C_ArtTShirt_01_v5_F");
allCivilianUniforms deleteAt (allCivilianUniforms find "U_C_ArtTShirt_01_v6_F");

allCivilianUniforms deleteAt (allCivilianUniforms find "U_C_Man_casual_1_F");
allCivilianUniforms deleteAt (allCivilianUniforms find "U_C_Man_casual_2_F");
allCivilianUniforms deleteAt (allCivilianUniforms find "U_C_Man_casual_3_F");

allCivilianUniforms deleteAt (allCivilianUniforms find "U_I_ParadeUniform_01_AAF_decorated_F");
allCivilianUniforms deleteAt (allCivilianUniforms find "U_O_ParadeUniform_01_CSAT_decorated_F");
allCivilianUniforms deleteAt (allCivilianUniforms find "U_I_E_ParadeUniform_01_LDF_decorated_F");
allCivilianUniforms deleteAt (allCivilianUniforms find "U_B_ParadeUniform_01_US_decorated_F");

allCivilianUniforms deleteAt (allCivilianUniforms find "U_I_ParadeUniform_01_AAF_F");
allCivilianUniforms deleteAt (allCivilianUniforms find "U_O_ParadeUniform_01_CSAT_F");
allCivilianUniforms deleteAt (allCivilianUniforms find "U_I_E_ParadeUniform_01_LDF_F");
allCivilianUniforms deleteAt (allCivilianUniforms find "U_B_ParadeUniform_01_US_F");

//Add for NF (these are uniforms that at a stretch could seem relatively civilian
allCivilianUniforms pushBackUnique "U_NORTH_SOV_Obr31_W_Polushubuk";
allCivilianUniforms pushBackUnique "fow_u_aus_m37_01_private";
allCivilianUniforms pushBackUnique "fow_u_aus_m37_02_private";
allCivilianUniforms pushBackUnique "fow_u_aus_m37_03_private";
allCivilianUniforms pushBackUnique "U_LIB_US_Pilot";
allCivilianUniforms pushBackUnique "U_LIB_US_Tank_Crew";

////////////////////////////////////
//      Backpacks Sorting        ///
////////////////////////////////////
{
	private _itemFaction = getText (configfile >> "CfgVehicles" >> _x >> "faction");
	switch (_itemFaction) do {
		case "Default": {allBackpacksEmpty pushBack _x};
		default {allBackpacksTool pushBack _x};
	};
} forEach allBackpacks;

allBackpacksEmpty deleteAt (allBackpacksEmpty find "B_AssaultPack_Kerry");

{
	switch (true) do {
		case ((getText (configfile >> "CfgVehicles" >> _x >> "assembleInfo" >> "assembleTo")) != ""): {
			if !((getArray (configfile >> "CfgVehicles" >> _x >> "assembleInfo" >> "base")) isEqualTo []) then {
				allBackpacksStatic pushBack _x;
			}
			else {
				allBackpacksDevice pushback _x;
			};
		};
		case ((getText (configfile >> "CfgVehicles" >> _x >> "assembleInfo" >> "assembleTo")) == ""): {
			if ((getText (configfile >> "CfgVehicles" >> _x >> "assembleInfo" >> "base")) == "") then {
				allBackpacksStatic pushBack _x;
			};
		};
	};
} forEach allBackpacksTool;

{
	private _faction = getText (configfile >> "CfgVehicles" >> _x >> "faction");
	private _side = getNumber (configfile >> "CfgFactionClasses" >> _faction >> "side");
	switch (_side) do {
		case 0: {invaderBackpackDevice pushBack _x};
		case 1: {occupantBackpackDevice pushBack _x};
		case 2: {rebelBackpackDevice pushBack _x};
		case 3: {civilianBackpackDevice pushBack _x};
	};
} forEach allBackpacksDevice;

////////////////////////////////////
//   ARMORED VESTS LIST          ///
////////////////////////////////////
//WHY is there no clean list?
//allArmoredVests = allVests select {getNumber (configfile >> "CfgWeapons" >> _x >> "ItemInfo" >> "HitpointsProtectionInfo" >> "Chest" >> "armor") > 5};
allCivilianVests = allVests - allArmoredVests; 

allCivilianVests deleteAt (allCivilianVests find "V_RebreatherB");
allCivilianVests deleteAt (allCivilianVests find "V_RebreatherIR");
allCivilianVests deleteAt (allCivilianVests find "V_RebreatherIA");

//Add for NF (these are belts that at a stretch could seem relatively civilian
allCivilianVests pushBackUnique "V_LIB_GER_PrivateBelt";
allCivilianVests pushBackUnique "V_LIB_GER_OfficerBelt";
allCivilianVests pushBackUnique "V_LIB_DAK_PrivateBelt";
allCivilianVests pushBackUnique "V_LIB_DAK_OfficerBelt";
allCivilianVests pushBackUnique "V_NORTH_Nor_Belt";
allCivilianVests pushBackUnique "V_NORTH_SOV_Belt";

////////////////////////////////////
//   ARMORED HELMETS LIST        ///
////////////////////////////////////
//WHY is there no clean list?
//allArmoredHeadgear = allHeadgear select {getNumber (configfile >> "CfgWeapons" >> _x >> "ItemInfo" >> "HitpointsProtectionInfo" >> "Head" >> "armor") > 0};
allCivilianHeadgear = allHeadgear - allArmoredHeadgear;

//remove stuff for NF
allCivilianHeadGear deleteAt (allCivilianHeadGear find "H_LIB_DAK_OfficerCap");
allCivilianHeadGear deleteAt (allCivilianHeadGear find "H_LIB_DAK_Cap");
allCivilianHeadGear deleteAt (allCivilianHeadGear find "H_LIB_NKVD_PrivateCap");
allCivilianHeadGear deleteAt (allCivilianHeadGear find "H_LIB_NKVD_OfficerCap");
allCivilianHeadGear deleteAt (allCivilianHeadGear find "H_LIB_GER_Fieldcap");
allCivilianHeadGear deleteAt (allCivilianHeadGear find "H_LIB_GER_Fieldcap2");
allCivilianHeadGear deleteAt (allCivilianHeadGear find "H_LIB_GER_Fieldcap_w");
allCivilianHeadGear deleteAt (allCivilianHeadGear find "H_LIB_GER_TankPrivateCap");
allCivilianHeadGear deleteAt (allCivilianHeadGear find "H_LIB_GER_TankPrivateCap2");
allCivilianHeadGear deleteAt (allCivilianHeadGear find "H_LIB_GER_TankOfficerCap");
allCivilianHeadGear deleteAt (allCivilianHeadGear find "H_LIB_GER_TankOfficerCap2");
allCivilianHeadGear deleteAt (allCivilianHeadGear find "H_LIB_GER_SPGPrivateCap");
allCivilianHeadGear deleteAt (allCivilianHeadGear find "H_LIB_GER_OfficerCap");
allCivilianHeadGear deleteAt (allCivilianHeadGear find "H_LIB_GER_Cap");
allCivilianHeadGear deleteAt (allCivilianHeadGear find "H_LIB_SOV_RA_PrivateCap");
allCivilianHeadGear deleteAt (allCivilianHeadGear find "H_LIB_SOV_RA_OfficerCap");
allCivilianHeadGear deleteAt (allCivilianHeadGear find "fow_h_ger_feldmutze");
allCivilianHeadGear deleteAt (allCivilianHeadGear find "fow_h_ger_feldmutze_panzer");
allCivilianHeadGear deleteAt (allCivilianHeadGear find "fow_h_ger_feldmutze_ss");
allCivilianHeadGear deleteAt (allCivilianHeadGear find "fow_h_ger_m38_feldmutze");
allCivilianHeadGear deleteAt (allCivilianHeadGear find "fow_h_ger_m38_feldmutze_panzer");
allCivilianHeadGear deleteAt (allCivilianHeadGear find "fow_h_ger_officer_cap");
allCivilianHeadGear deleteAt (allCivilianHeadGear find "fow_h_ger_officer_cap_ss");
allCivilianHeadGear deleteAt (allCivilianHeadGear find "fow_h_ija_fieldcap");
allCivilianHeadGear deleteAt (allCivilianHeadGear find "fow_h_ija_fieldcap_marine");
allCivilianHeadGear deleteAt (allCivilianHeadGear find "fow_h_ija_fieldcap_neck");
allCivilianHeadGear deleteAt (allCivilianHeadGear find "fow_h_ija_fieldcap_marine_neck");
allCivilianHeadGear deleteAt (allCivilianHeadGear find "fow_h_ija_fieldcap_officer");
allCivilianHeadGear deleteAt (allCivilianHeadGear find "fow_h_ger_headset");

allCivilianHeadGear deleteAt (allCivilianHeadGear find "H_ParadeDressCap_01_AAF_F");
allCivilianHeadGear deleteAt (allCivilianHeadGear find "H_ParadeDressCap_01_CSAT_F");
allCivilianHeadGear deleteAt (allCivilianHeadGear find "H_ParadeDressCap_01_LDF_F");
allCivilianHeadGear deleteAt (allCivilianHeadGear find "H_ParadeDressCap_01_US_F");

allCivilianHeadGear deleteAt (allCivilianHeadGear find "fow_h_uk_bp_beret");
allCivilianHeadGear deleteAt (allCivilianHeadGear find "fow_h_uk_beret_commando");
allCivilianHeadGear deleteAt (allCivilianHeadGear find "fow_h_uk_beret_commando_kieffer");
allCivilianHeadGear deleteAt (allCivilianHeadGear find "fow_h_uk_beret_commando_nor");
allCivilianHeadGear deleteAt (allCivilianHeadGear find "fow_h_uk_beret_commando_pol");
allCivilianHeadGear deleteAt (allCivilianHeadGear find "fow_h_uk_beret_commando_nl");
allCivilianHeadGear deleteAt (allCivilianHeadGear find "fow_h_uk_beret_commando_para");
allCivilianHeadGear deleteAt (allCivilianHeadGear find "fow_h_uk_beret_commando_para_2");
allCivilianHeadGear deleteAt (allCivilianHeadGear find "fow_h_uk_beret_commando_para_pol");
allCivilianHeadGear deleteAt (allCivilianHeadGear find "fow_h_uk_pib_beret");
allCivilianHeadGear deleteAt (allCivilianHeadGear find "fow_h_uk_beret_rha");
allCivilianHeadGear deleteAt (allCivilianHeadGear find "fow_h_uk_beret_rha_headset");
allCivilianHeadGear deleteAt (allCivilianHeadGear find "fow_h_uk_beret_royalmarines");
allCivilianHeadGear deleteAt (allCivilianHeadGear find "fow_h_uk_beret_rtr");
allCivilianHeadGear deleteAt (allCivilianHeadGear find "fow_h_uk_beret_rtr_headset");
allCivilianHeadGear deleteAt (allCivilianHeadGear find "fow_h_uk_beret_sas");
allCivilianHeadGear deleteAt (allCivilianHeadGear find "fow_h_uk_beret_sas_2");
allCivilianHeadGear deleteAt (allCivilianHeadGear find "fow_h_uk_beret");

allCivilianHeadGear deleteAt (allCivilianHeadGear find "H_LIB_UK_Beret_Commando");
allCivilianHeadGear deleteAt (allCivilianHeadGear find "H_LIB_UK_Beret_Commando_Kieffer");
allCivilianHeadGear deleteAt (allCivilianHeadGear find "H_LIB_UK_Beret");
allCivilianHeadGear deleteAt (allCivilianHeadGear find "H_LIB_UK_Para_Beret");
allCivilianHeadGear deleteAt (allCivilianHeadGear find "H_LIB_UK_Beret_Headset");
allCivilianHeadGear deleteAt (allCivilianHeadGear find "H_LIB_UK_Beret_Tankist");

//////////////////
//   Glasses   ///
//////////////////
allCivilianGlasses append allGlasses;

allCivilianGlasses deleteAt (allCivilianGlasses find "None");
allCivilianGlasses deleteAt (allCivilianGlasses find "G_Goggles_VR");
allCivilianGlasses deleteAt (allCivilianGlasses find "G_I_Diving");
allCivilianGlasses deleteAt (allCivilianGlasses find "G_O_Diving");
allCivilianGlasses deleteAt (allCivilianGlasses find "G_B_Diving");
allCivilianGlasses deleteAt (allCivilianGlasses find "LIB_Glasses");
