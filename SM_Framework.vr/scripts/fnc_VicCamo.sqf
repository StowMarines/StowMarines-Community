Merlin = {

	_texture = (_this select 0);
	_heli = (getPos (hp11)) nearestObject "Air";

	if (_heli distance (getPos (hp11)) < 10) then 
	{
		switch (_texture) do {
			case "Desert": {[_heli, "CamoDesert", false, false] call BIS_fnc_initVehicle;};
			case "Jungle": {[_heli, "CamoJungle", false, false] call BIS_fnc_initVehicle;};
			case "Grey": {[_heli, "CamoGrey", false, false] call BIS_fnc_initVehicle;};
		}
	}
	else 
	{
		format ["Vehicle is too far away"] remoteExec ["hint"];
	};
};

Leopard = {

	_texture = (_this select 0);
	_tank = (getPos (tankPadL)) nearestObject "Tank";

	if (_tank distance (getPos (tankPadL)) < 10) then 
	{
		switch (_texture) do {
			//case "Arid": {[_tank, "camonet_green", false, false] call BIS_fnc_initVehicle;}; //Only applies if the camo net is on
			case "Desert": {[_tank, "camonet_desert", false, false] call BIS_fnc_initVehicle;};
			case "Jungle": {[_tank, "camonet_jungle", false, false] call BIS_fnc_initVehicle;};
			case "Shard": {[_tank, "camo_shard", false, false] call BIS_fnc_initVehicle;};
		}
	}
	else 
	{
		format ["Vehicle is too far away"] remoteExec ["hint"];
	};
};

//Main
_veh = (_this select 0);
_texture = (_this select 1);

switch (_veh) do {
	case "Merlin": {[_texture] remoteExec ["Merlin", 0, true];};
	case "Leopard": {[_texture] remoteExec ["Leopard", 0, true];};
};