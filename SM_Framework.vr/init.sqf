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

helipadChecks = compile preprocessFile "scripts\helipadChecks.sqf";
fnc_VicCamo = compile preprocessFile "scripts\fnc_VicCamo.sqf";

//Ace Interaction Functions
//Vehicle Textures
//Merlin
MerlinP = ["MerlinP","Merlin","img\256Merlin.paa",{hint"Please choose your camo type";},{true}] call ace_interact_menu_fnc_createAction;
MerlinC_D = ["MerlinC_D","Desert Camo","",{["Merlin", "Desert"] remoteExec ["fnc_VicCamo", 0];},{true}] call ace_interact_menu_fnc_createAction;
MerlinC_J = ["MerlinC_J","Jungle Camo","",{["Merlin", "Jungle"] remoteExec ["fnc_VicCamo", 0];},{true}] call ace_interact_menu_fnc_createAction;
MerlinC_G = ["MerlinC_G","Grey Camo","",{["Merlin", "Grey"] remoteExec ["fnc_VicCamo", 0];},{true}] call ace_interact_menu_fnc_createAction;

//Leopard
LeopardP = ["LeopardP","Leopard","img\256Leopard.paa",{hint"Please choose your camo type";},{true}] call ace_interact_menu_fnc_createAction;
//LeopardC_A = ["LeopardC_A","Arid Camo","",{["Leopard", "Arid"] remoteExec ["fnc_VicCamo", 0];},{true}] call ace_interact_menu_fnc_createAction;
LeopardC_D = ["LeopardC_D","Desert Camo","",{["Leopard", "Desert"] remoteExec ["fnc_VicCamo", 0];},{true}] call ace_interact_menu_fnc_createAction;
LeopardC_J = ["LeopardC_J","Jungle Camo","",{["Leopard", "Jungle"] remoteExec ["fnc_VicCamo", 0];},{true}] call ace_interact_menu_fnc_createAction;
LeopardC_S = ["LeopardC_S","Shard Camo","",{["Leopard", "Shard"] remoteExec ["fnc_VicCamo", 0];},{true}] call ace_interact_menu_fnc_createAction;

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