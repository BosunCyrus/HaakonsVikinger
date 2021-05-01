if (!isServer and hasInterface) exitWith{};
didActivateNFSTage = 0;
switch (northernFrontsStage) do {
	case 0: {
		_missionTitle = "Secure Stockpile";
		_missionSubtitle = "Secure a stockpile of Norwegian Army weapons that are being loaded in a truck, near a warehouse under German control.";
		_thirdVariable = "Stockpile"; // This third variable represents a marker (which we're not using anyway? & also a task type... it works as is, so I don't see the need to work out what it actually changes
		_positionX = [7575,5212,215];
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
		_missionTitle = "Recieve Sten Guns";
		_missionSubtitle = "A local factory owner has made contact with Vikinger, he has risked his life to manufacture sten guns from British blueprints he obtained. The first batch is ready and he wants to give them to us.";
		_thirdVariable = "Stenguns";
		_positionX = [6479,2630,0];
		[[teamPlayer,civilian],"nfS",[_missionSubtitle,_missionTitle,_thirdVariable],_positionX,false,0,true,_thirdVariable,true] call BIS_fnc_taskCreate;
		StenGunTruck1 hideObject false;
		NFStageVehicle = StenGunTruck1;
		didActivateNFSTage = 1;
	};
	case 2: {
		_missionTitle = "Recieve Sten Guns";
		_missionSubtitle = "Our factory owner has made contact again. He has another batch of Sten guns in his house outside a Rafsbotn woodmill.";
		_thirdVariable = "Stenguns";
		_positionX = [10465,2591,0];
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
	didActivateNFSTage == 2;
	missionsX pushBack ["nfS","CREATED"]; publicVariable "missionsX";
	_CanI = canSuspend;
	waitUntil {sleep 1; (isPlayer driver NFStageVehicle) or (not alive NFStageVehicle) };
	if (isPlayer (driver NFStageVehicle)) then
	{
		//["nfS","SUCCEEDED"] call BIS_fnc_taskSetState;
		["nfS",[_missionSubtitle,_missionTitle,_thirdVariable],_positionX,"SUCCEEDED", _thirdVariable] call A3A_fnc_taskUpdate;
		northernFrontsStage = northernFrontsStage + 1;
		switch (NFStageVehicle) do {
			case KragBoxTruck: {
				"NORTH_nor_krag1894" call A3A_fnc_unlockEquipment;
			};
			case StenGunTruck1: {
				"NORTH_fin_m39" call A3A_fnc_unlockEquipment;
			};
			case StenGunTruck2: {
				"NORTH_sten" call A3A_fnc_unlockEquipment;
			};
		};
	};
	if !(alive NFStageVehicle) then
	{
		//["nfS","FAILED"] call BIS_fnc_taskSetState;
		switch (NFStageVehicle) do {
			case KragBoxTruck: {
				_MissionUpdatedTitle = "Find Stockpile";
				_MissionUpdatedSubtitle = "With the truck destroyed, you should check the warehouse to see if all of the rifles were loaded in on time...";
				["nfS",[_MissionUpdatedSubtitle,_MissionUpdatedTitle,_thirdVariable],_positionX,"ASSIGNED", _thirdVariable] call A3A_fnc_taskUpdate;
				NFhaveFoundAlternative = 0;
				KragBoxTruckAlternative hideObject false;
				KragBoxTruckAlternative addAction["Secure stockpile", {NFhaveFoundAlternative = 1;}];
				waitUntil {sleep 1; NFhaveFoundAlternative != 0};
				KragBoxTruckAlternative hideObject true;
				["nfS",[_missionSubtitle,_missionTitle,_thirdVariable],_positionX,"SUCCEEDED", _thirdVariable] call A3A_fnc_taskUpdate;
				"NORTH_nor_krag1894" call A3A_fnc_unlockEquipment;
				northernFrontsStage = northernFrontsStage + 1;
			};
			case StenGunTruck1: {
				["nfS",[_missionSubtitle,_missionTitle,_thirdVariable],_positionX,"FAILED", _thirdVariable] call A3A_fnc_taskUpdate;
				northernFrontsStage = northernFrontsStage + 1;
			};
			case StenGunTruck2: {
				_MissionUpdatedTitle = "Secure Stockpile";
				_MissionUpdatedSubtitle = "With the truck destroyed, you should find the house where the truck was parked. It's likely there are still supplies there.";
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
				northernFrontsStage = northernFrontsStage + 1;
			};
		};
	};
	_nul = [60,"nfS"] call A3A_fnc_deleteTask;
	didActivateNFSTage = 0;
};

//when they get in vehicles:
//_nul = ["nfS"] call BIS_fnc_deleteTask;

