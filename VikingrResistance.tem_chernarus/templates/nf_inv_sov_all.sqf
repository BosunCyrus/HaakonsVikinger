////////////////////////////////////
//       NAMES AND FLAGS         ///
////////////////////////////////////
//Name Used for notifications
nameInvaders = "Soviets";

//SF Faction
factionMaleInvaders = "";
//Miltia Faction
if (gameMode == 4) then {factionFIA = "LIB_NKVD"};

//Flag Images
CSATFlag = "LIB_FlagCarrier_SU";
CSATFlagTexture = "ww2\core_t\if_decals_t\ussr\flag_su_co.paa";
flagCSATmrk = "LIB_faction_RKKA";
if (isServer) then {"CSAT_carrier" setMarkerText "Soviet Reinforcements"};

//Loot Crate
CSATAmmoBox = "O_supplyCrate_F";

////////////////////////////////////
//   PVP LOADOUTS AND VEHICLES   ///
////////////////////////////////////
//PvP Loadouts
CSATPlayerLoadouts = [
	//Team Leader
	"O_NORTH_SOV_NAV_Submachinegunner_CPL",
	//Medic
	"O_NORTH_SOV_NAV_Medic",
	//Autorifleman
	"O_NORTH_SOV_NAV_Machinegunner",
	//Marksman
	"O_NORTH_SOV_NAV_Sniper",
	//Anti-tank Scout
	"O_NORTH_SOV_NAV_Rifleman_AT_F1",
	//AT2
	"O_NORTH_SOV_NAV_Rifleman_AT_F1"
];

//PVP Player Vehicles
vehCSATPVP = ["LIB_GazM1_SOV","LIB_GazM1_SOV_camo_sand","LIB_Willys_MB","LIB_Scout_M3"];

////////////////////////////////////
//             UNITS             ///
////////////////////////////////////
//Military Units
CSATGrunt = "O_NORTH_SOV_Autorifleman";
CSATOfficer = "O_NORTH_SOV_GRD_Officer_Cpt";
CSATBodyG = "O_NORTH_SOV_GRD_Submachinegunner";
CSATCrew = "O_NORTH_SOV_T_Crewman";
CSATMarksman = "O_NORTH_SOV_GRD_Sniper";
staticCrewInvaders = "O_NORTH_SOV_ART_Rifleman";
CSATPilot = "LIB_SOV_pilot";

//Militia Units
if (gameMode == 4) then
	{
	FIARifleman = "O_NORTH_SOV_N_41_Rifleman";
	FIAMarksman = "O_NORTH_SOV_N_41_Sniper";
	};

////////////////////////////////////
//            GROUPS             ///
////////////////////////////////////
//Military Groups
//Teams
//O_NORTH_SOV_R_Submachinegunner_SGT
groupsCSATSentry = ["O_NORTH_SOV_Rifleman_CPL","O_NORTH_SOV_Autorifleman"];
groupsCSATSniper = ["O_NORTH_SOV_R_Sniper","O_NORTH_SOV_R_Submachinegunner_SGT"];
groupsCSATsmall = [groupsCSATSentry,groupsCSATSniper];
//Fireteams
groupsCSATAA = ["O_NORTH_SOV_Submachinegunner_SSGT","O_NORTH_SOV_Machinegunner","O_NORTH_SOV_Rifleman","O_NORTH_SOV_Autorifleman"];
groupsCSATAT = ["O_NORTH_SOV_Submachinegunner_SSGT","O_NORTH_SOV_Rifleman","O_NORTH_SOV_Rifleman_AT_F1","O_NORTH_SOV_Rifleman_AT_F2"];
groupsCSATmid = [["O_NORTH_SOV_Submachinegunner_SGT","O_NORTH_SOV_Rifleman_CPL","O_NORTH_SOV_Autorifleman","O_NORTH_SOV_Rifleman"],groupsCSATAA,groupsCSATAT];
//Squads
CSATSquad = ["O_NORTH_SOV_Submachinegunner_SGT","O_NORTH_SOV_Machinegunner","O_NORTH_SOV_Autorifleman","O_NORTH_SOV_Autorifleman","O_NORTH_SOV_Rifleman","O_NORTH_SOV_Rifleman_AT_F1","O_NORTH_SOV_Rifleman_AT_F2","O_NORTH_SOV_Medic"];
CSATSpecOp = ["O_NORTH_SOV_R_Officer_Lt","O_NORTH_SOV_R_Submachinegunner_SGT","O_NORTH_SOV_R_Machinegunner","O_NORTH_SOV_R_Submachinegunner","O_NORTH_SOV_R_Autorifleman","O_NORTH_SOV_R_Autorifleman","O_NORTH_SOV_R_Sniper","O_NORTH_SOV_R_Sniper_SVT"];
groupsCSATSquad =
	[
	CSATSquad,
	["O_NORTH_SOV_C_Submachinegunner_SGT","O_NORTH_SOV_C_Machinegunner","O_NORTH_SOV_C_Autorifleman","O_NORTH_SOV_Engineer","O_NORTH_SOV_C_Autorifleman","O_NORTH_SOV_C_Rifleman_AT_F1","O_NORTH_SOV_C_Officer_2ndLt","O_NORTH_SOV_C_Medic"]
	];

//Militia Groups
if (gameMode == 4) then
	{
	//Teams
	groupsFIASmall =
		[
		[FIARifleman,FIARifleman],
		[FIAMarksman,FIARifleman]
		];
	//Fireteams
	groupsFIAMid =
		[
		["O_NORTH_SOV_N_41_Officer_Lt","O_NORTH_SOV_N_41_Submachinegunner","O_NORTH_SOV_N_41_Rifleman","O_NORTH_SOV_N_41_Rifleman"]
		];
	//Squads
	FIASquad = ["O_NORTH_SOV_N_41_Officer_Cpt","O_NORTH_SOV_N_41_Submachinegunner","O_NORTH_SOV_N_41_Submachinegunner","O_NORTH_SOV_N_41_Submachinegunner_SGT","O_NORTH_SOV_N_41_Submachinegunner_CPL","O_NORTH_SOV_N_41_Rifleman","O_NORTH_SOV_N_41_Rifleman","O_NORTH_SOV_N_41_Medic"];
	groupsFIASquad = [FIASquad];
	};

////////////////////////////////////
//           VEHICLES            ///
////////////////////////////////////
//Military Vehicles
//Lite
vehCSATBike = "R71RusOlive";
vehCSATLightArmed = ["LIB_Scout_M3"];
vehCSATLightUnarmed = ["LIB_GazM1_SOV","LIB_GazM1_SOV_camo_sand","LIB_Willys_MB"];
vehCSATTrucks = ["LIB_Zis5v","LIB_US6_Tent","LIB_US6_Open"];
vehCSATAmmoTruck = "LIB_US6_Ammo";
vehCSATLight = vehCSATLightArmed + vehCSATLightUnarmed;
//Armored
vehCSATAPC = ["LIB_SdKfz251_captured","NORTH_SOV_41_T26_M33_OT","NORTH_SOV_41_T26_M31"];
vehCSATTank = "NORTH_SOV_T28e";
vehCSATAA = "LIB_Zis5v_61K";
vehCSATAttack = vehCSATAPC + [vehCSATTank];
//Boats
vehCSATBoat = "LIB_LCI";
vehCSATRBoat = "LIB_LCM3_Armed";
vehCSATBoats = [vehCSATBoat,vehCSATRBoat];
//Planes
vehCSATPlane = "LIB_P39";
vehCSATPlaneAA = "LIB_La7";
vehCSATTransportPlanes = ["LIB_Li2", "LIB_Li2", "LIB_Li2", "LIB_Li2"];
//Heli
vehCSATPatrolHeli = "LIB_Li2";
vehCSATTransportHelis = [];
vehCSATAttackHelis = ["LIB_Pe2","LIB_Pe2"];
//UAV
vehCSATUAV = "not_supported";
vehCSATUAVSmall = "not_supported";
//Artillery
vehCSATMRLS = "LIB_US6_BM13";
vehCSATMRLSMags = "LIB_16Rnd_BM13";
//Combined Arrays
vehCSATNormal = vehCSATLight + vehCSATTrucks + [vehCSATAmmoTruck,"LIB_Zis5v_Med","LIB_Zis5v_Fuel","LIB_Zis6_Parm"];
vehCSATAir = vehCSATTransportHelis + vehCSATAttackHelis + [vehCSATPlane,vehCSATPlaneAA] + vehCSATTransportPlanes;

//Militia Vehicles
if (gameMode == 4) then
	{
	vehFIAArmedCar = "LIB_Scout_m3_w";
	vehFIATruck = "LIB_Zis5v_w";
	vehFIACar = "LIB_Willys_MB_w";
	};

////////////////////////////////////
//        STATIC WEAPONS         ///
////////////////////////////////////
//Assembled Statics
CSATMG = "LIB_Maxim_M30_base";
staticATInvaders = "LIB_Zis3";
staticAAInvaders = "LIB_61k";
CSATMortar = "NORTH_SOV_50rm38";

//Static Weapon Bags
MGStaticCSATB = "not_supported";
ATStaticCSATB = "not_supported";
AAStaticCSATB = "not_supported";
MortStaticCSATB = "not_supported";
//Short Support
supportStaticCSATB = "not_supported";
//Tall Support
supportStaticCSATB2 = "not_supported";
//Mortar Support
supportStaticCSATB3 = "not_supported";
