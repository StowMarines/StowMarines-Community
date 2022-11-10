InfAmmo = {
	_crateSpawn = (getPosATL crateSpawn);
	_spCheck = nearestObjects[_crateSpawn,["landVehicle","Air","Thing","CAManBase"],3] select 0;
	
	if (isNil "_spCheck") then {
		_box = "Box_NATO_Wps_F" createVehicle _crateSpawn;
		clearWeaponCargoGlobal _box; clearMagazineCargoGlobal _box; clearItemCargoGlobal _box;

		_box addMagazineCargoGlobal ["SPS_HKG3PMAG_30Rnd_556x45_S_M995", 20]; //5.56mm 30Rnd HK G3 PMAG Mag Sand M995AP
		_box addMagazineCargoGlobal ["SPS_P_60Rnd_556x45_Surefire_M995_AP_mag", 10]; //5.56mm 60Rnd Mag (M995 AP)
		_box addMagazineCargoGlobal ["200Rnd_556x45_Box_Red_F", 10]; //5.56 mm 200Rnd Reload Tracer (Red) Box
		_box addMagazineCargoGlobal ["rhs_mag_20Rnd_SCAR_762x51_m61_ap_bk", 10]; //20Rnd SCAR M61 AP (black)
		_box addMagazineCargoGlobal ["ACE_20Rnd_762x51_M993_AP_Mag", 10]; //7.62mm 20Rnd Mag (M993 AP)
		_box addMagazineCargoGlobal ["rhs_mag_m67", 8]; //M67 Fragmentation Grenade
		
		hint "Crate Spawned";
    } else {
		hint "Something is in the way";
    };
};

FSG = {
	_crateSpawn = (getPosATL crateSpawn);
	_spCheck = nearestObjects[_crateSpawn,["landVehicle","Air","Thing","CAManBase"],3] select 0;
	
	if (isNil "_spCheck") then {
		_box = "Box_NATO_Wps_F" createVehicle _crateSpawn;
		clearWeaponCargoGlobal _box; clearMagazineCargoGlobal _box; clearItemCargoGlobal _box;

		_box addMagazineCargoGlobal ["rhsgref_30rnd_556x45_vhs2_t", 10]; //30rnd VHS-2 M856A1 (Tracer)
		_box addMagazineCargoGlobal ["SPS_20Rnd_762x51mm_M80A1_EPR_Tracer", 10]; //7.62x51mm 20Rnd Mag (M80A1 EPR Tracer)
		_box addMagazineCargoGlobal ["rhsusf_100Rnd_762x51_m61_ap", 10]; //100rnd M240 Box M61 AP
		_box addMagazineCargoGlobal ["rhs_mag_M441_HE", 10]; //M441 HE Grenade Round
		_box addMagazineCargoGlobal ["200Rnd_65x39_cased_Box_Tracer_Red", 5]; //6.5mm 200Rnd Belt Tracer (Red)
		_box addMagazineCargoGlobal ["SPS_KAC_LAMG_M856A1_150rnd_T_Box", 5]; //100rnd M80A1 Box
		
		hint "Crate Spawned";
    } else {
		hint "Something is in the way";
    };
};

Rockets = {
	_crateSpawn = (getPosATL crateSpawn);
	_spCheck = nearestObjects[_crateSpawn,["landVehicle","Air","Thing","CAManBase"],3] select 0;
	
	if (isNil "_spCheck") then {
		_box = "Box_NATO_WpsLaunch_F" createVehicle _crateSpawn;
		clearWeaponCargoGlobal _box; clearMagazineCargoGlobal _box; clearItemCargoGlobal _box; clearBackpackCargoGlobal _box;

		_box addMagazineCargoGlobal ["rhs_mag_smaw_HEDP", 4]; //Mk. 3 HEDP
		_box addMagazineCargoGlobal ["rhs_mag_smaw_HEAA", 4]; //Mk. 6 HEAA
		_box addMagazineCargoGlobal ["rhs_mag_smaw_SR", 4]; //Mk. 217 Spotting
		
		hint "Crate Spawned";
    } else {
		hint "Something is in the way";
    };
};

Missiles = {
	_crateSpawn = (getPosATL crateSpawn);
	_spCheck = nearestObjects[_crateSpawn,["landVehicle","Air","Thing","CAManBase"],3] select 0;
	
	if (isNil "_spCheck") then {
		_box = "Box_NATO_WpsLaunch_F" createVehicle _crateSpawn;
		clearWeaponCargoGlobal _box; clearMagazineCargoGlobal _box; clearItemCargoGlobal _box; clearBackpackCargoGlobal _box;

		_box addMagazineCargoGlobal ["rhs_fgm148_magazine_AT", 3]; //FGM-148 Missile
		_box addMagazineCargoGlobal ["rhs_fim92_mag", 2]; //FIM-92F
		
		hint "Crate Spawned";
    } else {
		hint "Something is in the way";
    };
};

Explosives = {
	_crateSpawn = (getPosATL crateSpawn);
	_spCheck = nearestObjects[_crateSpawn,["landVehicle","Air","Thing","CAManBase"],3] select 0;
	
	if (isNil "_spCheck") then {
		_box = "Box_NATO_AmmoOrd_F" createVehicle _crateSpawn;
		clearWeaponCargoGlobal _box; clearMagazineCargoGlobal _box; clearItemCargoGlobal _box;

		_box addItemCargoGlobal ["ACE_M26_Clacker", 2]; //M152 Firing Device x2
		_box addItemCargoGlobal ["ACE_DefusalKit", 2]; //Defusal Kit x2
		_box addMagazineCargoGlobal ["rhs_ec400_sand_mag", 8]; //TNT 400
		_box addMagazineCargoGlobal ["rhs_ec200_sand_mag", 8]; //TNT 200
		_box addMagazineCargoGlobal ["rhs_ec75_sand_mag", 8]; //TNT 75
		_box addMagazineCargoGlobal ["rhsusf_m112_mag", 4]; //M112
		_box addMagazineCargoGlobal ["rhsusf_m112x4_mag", 2]; //M112 x4
		
		hint "Crate Spawned";
    } else {
		hint "Something is in the way";
    };
};

Util = {
	_crateSpawn = (getPosATL crateSpawn);
	_spCheck = nearestObjects[_crateSpawn,["landVehicle","Air","Thing","CAManBase"],3] select 0;
	
	if (isNil "_spCheck") then {
		_box = "Box_NATO_Support_F" createVehicle _crateSpawn;
		clearWeaponCargoGlobal _box; clearMagazineCargoGlobal _box; clearItemCargoGlobal _box; clearBackpackCargoGlobal _box;

		_box addItemCargoGlobal ["ACE_EarPlugs", 20]; //Ear Plugs
		_box addItemCargoGlobal ["UK3CB_ANPVS7", 20]; //AN/PVS-7B
		_box addItemCargoGlobal ["ACE_CableTie", 20]; //Cable Ties
		_box addItemCargoGlobal ["rhs_mag_mk84", 10]; //M84 Stun Grenade
		_box addItemCargoGlobal ["rhs_mag_an_m8hc", 10]; //AN-M8HC White Smoke
		_box addMagazineCargoGlobal ["rhs_mag_m397_HET", 10]; //M397 HET Grenade Round
		_box addMagazineCargoGlobal ["rhs_mag_M433_HEDP", 10]; //M443 HEDP Grenade Round
		_box addItemCargoGlobal ["rhs_mag_m18_green", 5]; //M18 Smoke Grenade (Green)
		_box addItemCargoGlobal ["rhs_mag_m18_red", 5]; //M18 Smoke Grenade (Red)
		_box addItemCargoGlobal ["ACE_EntrenchingTool", 5]; //Entyrenching Tool
		
		hint "Crate Spawned";
    } else {
		hint "Something is in the way";
    };
};

Jerry_W = {
	_crateSpawn = (getPosATL crateSpawn);
	_spCheck = nearestObjects[_crateSpawn,["landVehicle","Air","Thing","CAManBase"],3] select 0;
	
	if (isNil "_spCheck") then {
		_box = "rhsusf_props_ScepterMFC_OD" createVehicle _crateSpawn;		
		hint "Jerry Can Spawned";
    } else {
		hint "Something is in the way";
    };
};

Jerry_D = {
	_crateSpawn = (getPosATL crateSpawn);
	_spCheck = nearestObjects[_crateSpawn,["landVehicle","Air","Thing","CAManBase"],3] select 0;
	
	if (isNil "_spCheck") then {
		_box = "rhsusf_props_ScepterMFC_D" createVehicle _crateSpawn;		
		hint "Jerry Can Spawned";
    } else {
		hint "Something is in the way";
    };
};

VicAmmo = {
	_crateSpawn = (getPosATL crateSpawn);
	_spCheck = nearestObjects[_crateSpawn,["landVehicle","Air","Thing","CAManBase"],3] select 0;
	
	if (isNil "_spCheck") then {
		_box = "B_Slingload_01_Ammo_F" createVehicle _crateSpawn;
		hint "Crate Spawned";
    } else {
		hint "Something is in the way";
    };
};

VicFuel = {
	_crateSpawn = (getPosATL crateSpawn);
	_spCheck = nearestObjects[_crateSpawn,["landVehicle","Air","Thing","CAManBase"],3] select 0;
	
	if (isNil "_spCheck") then {
		_box = "B_Slingload_01_Fuel_F" createVehicle _crateSpawn;
		hint "Crate Spawned";
    } else {
		hint "Something is in the way";
    };
};

VicRepair = {
	_crateSpawn = (getPosATL crateSpawn);
	_spCheck = nearestObjects[_crateSpawn,["landVehicle","Air","Thing","CAManBase"],3] select 0;
	
	if (isNil "_spCheck") then {
		_box = "B_Slingload_01_Repair_F" createVehicle _crateSpawn;
		hint "Crate Spawned";
    } else {
		hint "Something is in the way";
    };
};

Medical = {
	_crateSpawn = (getPosATL crateSpawn);
	_spCheck = nearestObjects[_crateSpawn,["landVehicle","Air","Thing","CAManBase"],3] select 0;
	
	if (isNil "_spCheck") then {
		_box = "ACE_medicalSupplyCrate_advanced" createVehicle _crateSpawn;
		clearWeaponCargoGlobal _box; clearMagazineCargoGlobal _box; clearItemCargoGlobal _box;

		_box addItemCargoGlobal ["ACE_adenosine", 15]; //Adenosine
		_box addItemCargoGlobal ["ACE_fieldDressing", 25]; //Bandage (Basic)
		_box addItemCargoGlobal ["ACE_elasticBandage", 25]; //Bandage (Elastic)
		_box addItemCargoGlobal ["ACE_packingBandage", 25]; //Bandage (Packing)
		_box addItemCargoGlobal ["ACE_quikclot", 20]; //Bandage (QuikClot)
		_box addItemCargoGlobal ["ACE_bloodIV", 7]; //Blood IV (1000ml)
		_box addItemCargoGlobal ["ACE_bloodIV_250", 7]; //Blood IV (250ml)
		_box addItemCargoGlobal ["ACE_bloodIV_500", 7]; //Blood IV (500ml)
		_box addItemCargoGlobal ["ACE_bodyBag", 5]; //Bodybag
		_box addItemCargoGlobal ["ACE_epinephrine", 15]; //Epinephrine
		_box addItemCargoGlobal ["ACE_morphine", 15]; //Morphine
		_box addItemCargoGlobal ["ACE_plasmaIV", 7]; //Plasma IV (1000ml)
		_box addItemCargoGlobal ["ACE_plasmaIV_250", 7]; //Plasma IV (250ml)
		_box addItemCargoGlobal ["ACE_plasmaIV_500", 7]; //Plasma IV (500ml)
		_box addItemCargoGlobal ["ACE_salineIV", 7]; //Saline IV (1000ml)
		_box addItemCargoGlobal ["ACE_salineIV_250", 7]; //Saline IV (250ml)
		_box addItemCargoGlobal ["ACE_salineIV_500", 7]; //Saline IV (500ml)
		_box addItemCargoGlobal ["ACE_splint", 15]; //Splint
		_box addItemCargoGlobal ["ACE_surgicalKit", 15]; //Surgical Kit
		_box addItemCargoGlobal ["ACE_tourniquet", 15]; //Torniquet
		
		hint "Crate Spawned";
    } else {
		hint "Something is in the way";
    };
};

Empty = {
	_crateSpawn = (getPosATL crateSpawn);
	_spCheck = nearestObjects[_crateSpawn,["landVehicle","Air","Thing","CAManBase"],3] select 0;
	
	if (isNil "_spCheck") then {
		_box = "Box_NATO_WpsSpecial_F" createVehicle _crateSpawn;
		clearWeaponCargoGlobal _box; clearMagazineCargoGlobal _box; clearItemCargoGlobal _box;
		hint "Crate Spawned";
    } else {
		hint "Something is in the way";
    };
};


//Main
_crate = (_this select 0);
[""] remoteExec [_crate, player, true];
