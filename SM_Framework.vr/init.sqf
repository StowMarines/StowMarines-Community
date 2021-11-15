["ACRE_PRC152", "default", 1, "description", "APOLLO"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC152", "default", 2, "description", "ARES"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC152", "default", 3, "description", "AURA"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC152", "default", 4, "description", "ATHENA"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC152", "default", 5, "description", "INTELLIGENCE"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC152", "default", 6, "description", "KRATOS"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC152", "default", 7, "description", "MEDICAL"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC152", "default", 8, "description", "HELIOS"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC152", "default", 9, "description", "AIR"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC152", "default", 10, "description", "1st PLATOON"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC152", "default", 11, "description", "2nd PLATOON"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC152", "default", 12, "description", "ATC/VTS"] call acre_api_fnc_setPresetChannelField;

["ACRE_PRC117F", "default", 1, "description", "APOLLO"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC117F", "default", 2, "description", "ARES"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC117F", "default", 3, "description", "AURA"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC117F", "default", 4, "description", "ATHENA"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC117F", "default", 5, "description", "INTELLIGENCE"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC117F", "default", 6, "description", "KRATOS"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC117F", "default", 7, "description", "MEDICAL"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC117F", "default", 8, "description", "HELIOS"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC117F", "default", 9, "description", "AIR"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC117F", "default", 10, "description", "1st PLATOON"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC117F", "default", 11, "description", "2nd PLATOON"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC117F", "default", 12, "description", "ATC/VTS"] call acre_api_fnc_setPresetChannelField;

logistics switchMove "AmovPercMstpSnonWnonDnon_Ease";
logistics disableAI "all";

helipadChecks = compile preprocessFile "scripts\helipadChecks.sqf";
fnc_Logistics = compile preprocessFile "scripts\fnc_Logistics.sqf";

//Logistics Crate Guy
spawnCrate = ["spawnCrate","Spawn Crate","",{hint"Please choose your crate type";},{true}] call ace_interact_menu_fnc_createAction;
ammoCrate = ["ammoCrate","Standard Ammunition","",{["InfAmmo"] remoteExec ["fnc_Logistics", player];},{true}] call ace_interact_menu_fnc_createAction;
FSGCrate = ["FSGCrate","FSG Ammunition","",{["FSG"] remoteExec ["fnc_Logistics", player];},{true}] call ace_interact_menu_fnc_createAction;
rocketsCrate = ["rocketsCrate","Rockets","",{["Rockets"] remoteExec ["fnc_Logistics", player];},{true}] call ace_interact_menu_fnc_createAction;
missilesCrate = ["missilesCrate","Missiles","",{["Missiles"] remoteExec ["fnc_Logistics", player];},{true}] call ace_interact_menu_fnc_createAction;
explosivesCrate = ["explosivesCrate","Explosives","",{["Explosives"] remoteExec ["fnc_Logistics", player];},{true}] call ace_interact_menu_fnc_createAction;
utilCrate = ["utilCrate","Utilities","",{["Util"] remoteExec ["fnc_Logistics", player];},{true}] call ace_interact_menu_fnc_createAction;
vicCrate = ["vicCrate","Vehicle Ammunition","",{["VicAmmo"] remoteExec ["fnc_Logistics", player, true];},{true}] call ace_interact_menu_fnc_createAction;
medCrate = ["medCrate","Medical Supplies","",{["Medical"] remoteExec ["fnc_Logistics", player];},{true}] call ace_interact_menu_fnc_createAction;
emptyCrate = ["emptyCrate","Empty Crate","",{["Empty"] remoteExec ["fnc_Logistics", player];},{true}] call ace_interact_menu_fnc_createAction;

//Sling Load Fix
["lsl_slingLocality", 
	{
		params ["_heli", "_object"];
		private _heliOwner = owner _heli;
		if (_heliOwner != owner _object) then {
		_object setOwner _heliOwner;
		};
	}
] call CBA_fnc_addEventHandler;

["Helicopter", "init", 
	{
		params ["_heli"];

		_heli addEventHandler ["RopeAttach",
		
		{
			params ["_heli", "", "_object"];
			["lsl_slingLocality", [_heli, _object]] call CBA_fnc_serverEvent;
		}
	];
	}, true, [], true
] call CBA_fnc_addClassEventHandler;