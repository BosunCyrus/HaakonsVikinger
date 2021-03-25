class CfgPatches
{
	class ttc_fow_tfar_compat
	{
		requiredVersion=1;
		requiredAddons[]={};
		name="FOW TFAR Compatibility Patch";
		author="TsimTheCreep";
		
		units[] = {};
	};
	class cyrus_nf_antistasi
	{
		requiredVersion=1;
		requiredAddons[]={};
		name="Northern Fronts Antistasi Config"
		author="Cyrus";
		
		units[] =
		{
			"I_NORTH_NOR_Radioman"
		};
	}
};
class CfgVehicles
{
	//"NORTH_sov_m9130_PU"
	class I_NORTH_NOR_Rifleman;
	class I_NORTH_NOR_Officer;
	class I_NORTH_NOR_Radioman: I_NORTH_NOR_Rifleman
	{
		displayName = "Radio Operator";
		backpack = "NORTH_fin_Kyynel";
	};
	class I_NORTH_NOR_Antitank: I_NORTH_NOR_Rifleman
	{
		displayName = "Anti-Tank";
		weapons[] = {"NORTH_sten","fow_w_m1a1_bazooka"};
        respawnWeapons[] = {"NORTH_sten","fow_w_m1a1_bazooka"};

        magazines[] = {"NORTH_32rnd_sten_mag","fow_1Rnd_m6a1","NORTH_32rnd_sten_mag"};
        respawnMagazines[] = {"NORTH_32rnd_sten_mag","fow_1Rnd_m6a1","NORTH_32rnd_sten_mag"};

        backpack = "NORTH_nor_Telemark";
	};
	class I_NORTH_NOR_Lieutenant: I_NORTH_NOR_Officer
	{
		displayName = "Lieutenant";
	};
	class Bag_Base;
	class fow_b_torn_radio: Bag_Base
	{
		tf_dialogUpdate="call TFAR_fnc_updateLRDialogToChannel;";
		tf_hasLRradio=1;
		tf_encryptionCode="tf_guer_radio_code";
		tf_dialog="rt1523g_radio_dialog";
		tf_subtype="digital_lr";
		tf_range=20000;
	};
	class fow_b_us_radio: Bag_Base
	{
		tf_dialogUpdate="call TFAR_fnc_updateLRDialogToChannel;";
		tf_hasLRradio=1;
		tf_encryptionCode="tf_guer_radio_code";
		tf_dialog="anprc155_radio_dialog";
		tf_subtype="digital_lr";
		tf_range=20000;
	};
	class fow_b_us_radio_scr: Bag_Base
	{
		tf_dialogUpdate="call TFAR_fnc_updateLRDialogToChannel;";
		tf_hasLRradio=1;
		tf_encryptionCode="tf_guer_radio_code";
		tf_dialog="anprc155_radio_dialog";
		tf_subtype="digital_lr";
		tf_range=20000;
	};
	class fow_b_uk_p37_radio_blanco: Bag_Base
	{
		tf_dialogUpdate="call TFAR_fnc_updateLRDialogToChannel;";
		tf_hasLRradio=1;
		tf_encryptionCode="tf_guer_radio_code";
		tf_dialog="anprc155_radio_dialog";
		tf_subtype="digital_lr";
		tf_range=20000;
	};
	class fow_b_uk_p37_radio: Bag_Base
	{
		tf_dialogUpdate="call TFAR_fnc_updateLRDialogToChannel;";
		tf_hasLRradio=1;
		tf_encryptionCode="tf_guer_radio_code";
		tf_dialog="anprc155_radio_dialog";
		tf_subtype="digital_lr";
		tf_range=20000;
	};
};
class cfgMods
{
	author="TsimTheCreep";
	timepacked="1570661076";
};
