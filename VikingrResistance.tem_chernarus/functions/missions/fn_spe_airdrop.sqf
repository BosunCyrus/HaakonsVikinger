if (!isServer and hasInterface) exitWith{};
private _filename = "fn_spe_airdrop.sqf";
[3,"Northern Fronts: Airdrop file called.",_filename] call A3A_fnc_log;
didActivateNFSTage = 0;
switch (northernFrontsStage) do {
	case 0: {
		private _missionTitle = "Secure Stockpile";
		private _missionSubtitle = "Secure a stockpile of Norwegian Army weapons that are being loaded in a truck, near a warehouse under German control.";
		private _thirdVariable = "Stockpile"; // This third variable represents a marker (which we're not using anyway?) & also a task type... it works as is, so I don't see the need to work out what it actually changes
		private _positionX = [7575,5212,215];
		[3,"Northern Fronts: It's the first stockpile.",_filename] call A3A_fnc_log;
		[[teamPlayer,civilian],"nfS",[_missionSubtitle,_missionTitle,_thirdVariable],_positionX,false,0,true,_thirdVariable,true] call BIS_fnc_taskCreate;
		KragBox1 hideObject false;
		KragBox2 hideObject false;
		KragBox3 hideObject false;
		KragBox4 hideObject false;
		KragBoxTruck hideObject false;
		KragMadsen1 hideObject false;
		KragMadsen2 hideObject false;
		KragMadsen3 hideObject false;
		NFStageVehicle = KragBoxTruck;
		didActivateNFSTage = 1;
	};
	case 1: {
		private _missionTitle = "Recieve Sten Guns";
		private _missionSubtitle = "A local factory owner has made contact with Vikinger, he has risked his life to manufacture sten guns from British blueprints he obtained. The first batch is ready and he wants to give them to us.";
		private _thirdVariable = "Stenguns";
		private _positionX = [6479,2630,0];
		[3,"Northern Fronts: It's the second stockpile.",_filename] call A3A_fnc_log;
		[[teamPlayer,civilian],"nfS",[_missionSubtitle,_missionTitle,_thirdVariable],_positionX,false,0,true,_thirdVariable,true] call BIS_fnc_taskCreate;
		StenGunTruck1 hideObject false;
		NFStageVehicle = StenGunTruck1;
		didActivateNFSTage = 1;
	};
	case 2: {
		private _missionTitle = "Recieve Sten Guns";
		private _missionSubtitle = "Our factory owner has made contact again. He has another batch of Sten guns in his house outside a Rafsbotn woodmill.";
		private _thirdVariable = "Stenguns";
		private _positionX = [10465,2591,0];
		[3,"Northern Fronts: It's the third stockpile.",_filename] call A3A_fnc_log;
		[[teamPlayer,civilian],"nfS",[_missionSubtitle,_missionTitle,_thirdVariable],_positionX,false,0,true,_thirdVariable,true] call BIS_fnc_taskCreate;
		StenGunTruck2 hideObject false;
		StenHouseMag1 hideObject false;
		StenHouseMag2 hideObject false;
		StenHouseMag3 hideObject false;
		StenHouseGun1 hideObject false;
		StenHouseGun2 hideObject false;
		StenHouseGun3 hideObject false;
		StenHouseBox1 hideObject false;
		StenHouseBox2 hideObject false;
		StenHouseBox3 hideObject false;
		StenHouseBox4 hideObject false;
		StenHouseBox5 hideObject false;
		StenHouseBoxAlternative hideObject false;
		
		NFStageVehicle = StenGunTruck2;
		didActivateNFSTage = 1;
	};
};

if (didActivateNFSTage == 1) then
{
	[3,"Northern Fronts: Moving to the second phase.",_filename] call A3A_fnc_log;
	didActivateNFSTage == 2;
	missionsX pushBack ["nfS","CREATED"]; publicVariable "missionsX";
	_CanI = canSuspend;
	waitUntil {sleep 1; (isPlayer driver NFStageVehicle) or (not alive NFStageVehicle) };
	[3,"Northern Fronts: Woken up!",_filename] call A3A_fnc_log;
	if (isPlayer (driver NFStageVehicle)) then
	{
		//["nfS","SUCCEEDED"] call BIS_fnc_taskSetState;
		["nfS",[_missionSubtitle,_missionTitle,_thirdVariable],_positionX,"SUCCEEDED", _thirdVariable] call A3A_fnc_taskUpdate;
		switch (NFStageVehicle) do {
			case KragBoxTruck: {
				northernFrontsStage = 1;
				[3,"Northern Fronts: Somebody got in the drivers seat of the Krag truck, success.",_filename] call A3A_fnc_log;
				"NORTH_nor_krag1894" call A3A_fnc_unlockEquipment;
			};
			case StenGunTruck1: {
				northernFrontsStage = 2;
				[3,"Northern Fronts: Somebody got in the drivers seat of the first stengun truck, success.",_filename] call A3A_fnc_log;
				"NORTH_fin_m39" call A3A_fnc_unlockEquipment;
			};
			case StenGunTruck2: {
				northernFrontsStage = 3;
				[3,"Northern Fronts: Somebody got in the drivers seat of the second stengun truck, success.",_filename] call A3A_fnc_log;
				"NORTH_sten" call A3A_fnc_unlockEquipment;
			};
		};
	};
	if !(alive NFStageVehicle) then
	{
		[3,"Northern Fronts: The vehicle got destroyed.",_filename] call A3A_fnc_log;
		//["nfS","FAILED"] call BIS_fnc_taskSetState;
		switch (NFStageVehicle) do {
			case KragBoxTruck: {
				_MissionUpdatedTitle = "Find Stockpile";
				_MissionUpdatedSubtitle = "With the truck destroyed, you should check the warehouse to see if all of the rifles were loaded in on time...";
				[3,"Northern Fronts: Created the krag jorgenson alternative.",_filename] call A3A_fnc_log;
				["nfS",[_MissionUpdatedSubtitle,_MissionUpdatedTitle,_thirdVariable],_positionX,"ASSIGNED", _thirdVariable] call A3A_fnc_taskUpdate;
				NFhaveFoundAlternative = 0;
				KragBoxTruckAlternative hideObject false;
				KragBoxTruckAlternative addAction["Secure stockpile", {NFhaveFoundAlternative = 1;}];
				waitUntil {sleep 1; NFhaveFoundAlternative != 0};
				KragBoxTruckAlternative hideObject true;
				["nfS",[_missionSubtitle,_missionTitle,_thirdVariable],_positionX,"SUCCEEDED", _thirdVariable] call A3A_fnc_taskUpdate;
				"NORTH_nor_krag1894" call A3A_fnc_unlockEquipment;
				northernFrontsStage = 1;
			};
			case StenGunTruck1: {
				[3,"Northern Fronts: The mission failed.",_filename] call A3A_fnc_log;
				["nfS",[_missionSubtitle,_missionTitle,_thirdVariable],_positionX,"FAILED", _thirdVariable] call A3A_fnc_taskUpdate;
				northernFrontsStage = 2;
			};
			case StenGunTruck2: {
				_MissionUpdatedTitle = "Secure Stockpile";
				_MissionUpdatedSubtitle = "With the truck destroyed, you should find the house where the truck was parked. It's likely there are still supplies there.";
				[3,"Northern Fronts: Created the stengun alternative.",_filename] call A3A_fnc_log;
				["nfS",[_MissionUpdatedSubtitle,_MissionUpdatedTitle,_thirdVariable],_positionX,"ASSIGNED", _thirdVariable] call A3A_fnc_taskUpdate;
				NFhaveFoundAlternative = 0;
				StenHouseBoxAlternative addAction["Secure stockpile", {NFhaveFoundAlternative = 1;}];
				waitUntil {sleep 1; NFhaveFoundAlternative != 0};
				StenHouseBox1 hideObject true;
				StenHouseBox2 hideObject true;
				StenHouseBox3 hideObject true;
				StenHouseBox4 hideObject true;
				StenHouseBox5 hideObject true;
				StenHouseBoxAlternative hideObject true;
				["nfS",[_missionSubtitle,_missionTitle,_thirdVariable],_positionX,"SUCCEEDED", _thirdVariable] call A3A_fnc_taskUpdate;
				"NORTH_sten" call A3A_fnc_unlockEquipment;
				northernFrontsStage = 3;
			};
		};
	};
	[3,"Northern Fronts: It's all over, deleting the task in a minute.",_filename] call A3A_fnc_log;
	_nul = [60,"nfS"] call A3A_fnc_deleteTask;
	didActivateNFSTage = 0;
};
