if (!isServer) exitWith {};

_helipadMarker = (_this select 0);
_helipad = (_this select 1);

while { true } do {
  sleep 5;
  _nearObj = (getPos _helipad) nearestObject "Air";
  if ((_nearObj distance (getPos _helipad)) < 10) then {
    _helipadMarker setMarkerColor "colorRed";
  } else {
    _helipadMarker setMarkerColor "colorGreen";
  };
};