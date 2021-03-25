////////////////////////////////////
//       NAMES AND FLAGS         ///
////////////////////////////////////
//Name Used for notifications
nameOccupants = "Wehrmacht";

//Police Faction
factionGEN = "SG_STURMPANZER";
//SF Faction
factionMaleOccupants = "LIB_FSJ";
//Miltia Faction
if (gameMode != 4) then {factionFIA = "LIB_DAK"};

//Flag Images
NATOFlag = "LIB_FlagCarrier_GER";
NATOFlagTexture = "ww2\core_t\if_decals_t\german\flag_ger_co.paa";
flagNATOmrk = "LIB_faction_WEHRMACHT";
if (isServer) then {"NATO_carrier" setMarkerText "Wehrmacht Reinforcements"};

//Loot Crate
NATOAmmobox = "B_supplyCrate_F";

////////////////////////////////////
//   PVP LOADOUTS AND VEHICLES   ///
////////////////////////////////////
//PvP Loadouts
NATOPlayerLoadouts = [
	//Team Leader
	"LIB_FSJ_NCO",
	//Medic
	"LIB_FSJ_medic",
	//Autorifleman
	"LIB_FSJ_Soldier_2",
	//Marksman
	"LIB_FSJ_Sniper",
	//Anti-tank Scout
	"LIB_FSJ_LAT_Soldier",
	//AT2
	"LIB_FSJ_LAT_Soldier"
];

//PVP Player Vehicles
vehNATOPVP = ["LIB_Kfz1_Hood_sernyt","LIB_Kfz1_sernyt","LIB_Kfz1_MG42_sernyt"];

////////////////////////////////////
//             UNITS             ///
////////////////////////////////////
//Military Units
NATOGrunt = "LIB_GER_rifleman";
NATOOfficer = "LIB_GER_oberst";
NATOOfficer2 = "LIB_GER_hauptmann";
NATOBodyG = "SG_sturmtrooper_stggunner";
NATOCrew = "LIB_GER_tank_crew";
NATOUnarmed = "B_G_Survivor_F";
NATOMarksman = "LIB_GER_scout_sniper";
staticCrewOccupants = "LIB_GER_gun_crew";
NATOPilot = "LIB_GER_pilot";

//Militia Units
if (gameMode != 4) then
	{
	FIARifleman = "LIB_GER_Soldier2";
	FIAMarksman = "LIB_GER_ober_rifleman";
	};

//Police Units
policeOfficer = "SG_sturmpanzer_unterofficer";
policeGrunt = "SG_sturmpanzer_crew";

////////////////////////////////////
//            GROUPS             ///
////////////////////////////////////
//Military Groups
//Teams
groupsNATOSentry = ["LIB_GER_Soldier3_base","LIB_GER_ober_rifleman"];
groupsNATOSniper = ["LIB_GER_scout_sniper","LIB_GER_soldier_camo5_base"];
groupsNATOsmall = [groupsNATOSentry,groupsNATOSniper];
//Fireteams
groupsNATOAA = ["LIB_GER_unterofficer","LIB_GER_stggunner","LIB_GER_stggunner","LIB_GER_mgunner"];
groupsNATOAT = ["LIB_GER_unterofficer","LIB_GER_AT_soldier","LIB_GER_AT_grenadier","LIB_GER_mgunner"];
groupsNATOmid = [["LIB_GER_unterofficer","LIB_GER_mgunner","LIB_GER_scout_ober_rifleman","LIB_GER_scout_sniper"],groupsNATOAA,groupsNATOAT];
//Squads
NATOSquad = ["LIB_GER_unterofficer","LIB_GER_mgunner","LIB_GER_Soldier2_base","LIB_GER_scout_ober_rifleman","LIB_GER_stggunner","LIB_GER_AT_soldier","LIB_GER_scout_sniper","LIB_GER_medic"];
NATOSpecOp = ["LIB_FSJ_NCO","LIB_FSJ_Mgunner","LIB_FSJ_Soldier_2","LIB_FSJ_AT_soldier","LIB_FSJ_Soldier_2","LIB_FSJ_sapper","LIB_FSJ_Sniper","LIB_FSJ_medic"];
groupsNATOSquad =
	[
	NATOSquad,
	["LIB_GER_unterofficer","LIB_GER_mgunner","LIB_GER_smgunner","LIB_GER_AT_grenadier","LIB_GER_ober_rifleman","LIB_GER_sapper","LIB_GER_sapper_gefr","LIB_GER_medic"]
	];

//Militia Groups
if (gameMode != 4) then
	{
	//Teams
	groupsFIASmall =
		[
		["LIB_GER_Soldier3","LIB_GER_Soldier2"],
		["LIB_GER_Soldier3","LIB_GER_Soldier2"],
		["LIB_GER_Soldier3","LIB_GER_Soldier2"],
		[FIAMarksman,FIARifleman]
		];
	//Fireteams
	groupsFIAMid =
		[
		["LIB_GER_Soldier3","LIB_GER_Soldier2","LIB_GER_Soldier2","LIB_GER_Soldier2"],
		["LIB_GER_Soldier3","LIB_GER_Soldier2","LIB_GER_LAT_Rifleman","LIB_GER_ober_grenadier"],
		["LIB_GER_Soldier3","LIB_GER_Soldier2","LIB_GER_Soldier2","LIB_GER_ober_rifleman"]
		];
	//Squads
	FIASquad = ["LIB_GER_ober_lieutenant","LIB_GER_Soldier2","LIB_GER_Soldier3","LIB_GER_Soldier3","LIB_GER_ober_grenadier","LIB_GER_LAT_Rifleman","LIB_GER_radioman","LIB_GER_medic"];
	groupsFIASquad =
		[
		FIASquad,
		["LIB_GER_ober_lieutenant","LIB_GER_Soldier2","LIB_GER_Soldier2","LIB_GER_Soldier3","LIB_GER_ober_grenadier","LIB_GER_ober_rifleman","LIB_GER_radioman","LIB_GER_medic"]
		];
	};

//Police Groups
//Teams
groupsNATOGen = [policeOfficer,policeGrunt];

////////////////////////////////////
//           VEHICLES            ///
////////////////////////////////////
//Military Vehicles
//Lite
vehNATOBike = "R71Ger44";
vehNATOLightArmed = ["LIB_Kfz1_MG42_sernyt","fow_v_sdkfz_222_ger_heer"];
vehNATOLightUnarmed = ["LIB_Kfz1_Hood_sernyt","LIB_Kfz1_sernyt"];
vehNATOTrucks = ["LIB_OpelBlitz_Open_Y_Camo","LIB_OpelBlitz_Tent_Y_Camo"];
vehNATOCargoTrucks = [];
vehNATOAmmoTruck = "LIB_OpelBlitz_Ammo";
vehNATORepairTruck = "LIB_OpelBlitz_Parm";
vehNATOLight = vehNATOLightArmed + vehNATOLightUnarmed;
//Armored
vehNATOAPC = ["LIB_SdKfz251","fow_v_sdkfz_234_1","pz2f","ifa3_pz3J_sov"];
vehNATOTank = "LIB_PzKpfwIV_H";
vehNATOAA = "LIB_FlakPanzerIV_Wirbelwind";
vehNATOAttack = vehNATOAPC + [vehNATOTank];
//Boats
vehNATOBoat = "LIB_UK_LCI";
vehNATORBoat = "LIB_UK_LCA";
vehNATOBoats = [vehNATOBoat,vehNATORBoat];
//Planes
vehNATOPlane = "LIB_ARR_Ju87";
vehNATOPlaneAA = "LIB_FW190F8";
vehNATOTransportPlanes = ["LIB_C47_RAF"];
//Heli
vehNATOPatrolHeli = "LIB_C47_RAF";
vehNATOTransportHelis = [];
vehNATOAttackHelis = ["LIB_Ju87"];
//UAV
vehNATOUAV = "not_supported";
vehNATOUAVSmall = "not_supported";
//Artillery
vehNATOMRLS = "LIB_SdKfz124";
vehNATOMRLSMags = "LIB_20x_Shell_105L28_Gr39HlC";
//Combined Arrays
vehNATONormal = vehNATOLight + vehNATOTrucks + [vehNATOAmmoTruck,"LIB_OpelBlitz_Fuel","LIB_OpelBlitz_Ambulance", vehNATORepairTruck,"LIB_SdKfz_7"];
vehNATOAir = vehNATOTransportHelis + vehNATOAttackHelis + [vehNATOPlane,vehNATOPlaneAA] + vehNATOTransportPlanes;

//Militia Vehicles
if (gameMode != 4) then
	{
	vehFIAArmedCar = "LIB_Kfz1_MG42_camo";
	vehFIATruck = "LIB_OpelBlitz_Open_Y_Camo_w";
	vehFIACar = "LIB_Kfz1_hood_w";
	};

//Police Vehicles
vehPoliceCar = "LIB_Kfz1_sernyt";

////////////////////////////////////
//        STATIC WEAPONS         ///
////////////////////////////////////
//Assembled Statics
NATOMG = "LIB_MG42_Lafette_Deployed";
staticATOccupants = "LIB_FlaK_36";
staticAAOccupants = "LIB_Flakvierling_38";
NATOMortar = "LIB_GrWr34_g";

//Static Weapon Bags
MGStaticNATOB = "not_supported";
ATStaticNATOB = "not_supported";
AAStaticNATOB = "not_supported";
MortStaticNATOB = "not_supported";
//Short Support
supportStaticNATOB = "not_supported";
//Tall Support
supportStaticNATOB2 = "not_supported";
//Mortar Support
supportStaticNATOB3 = "not_supported";
