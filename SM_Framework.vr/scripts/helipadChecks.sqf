if (!isServer) exitWith {};

_helipadMarker = (_this select 0);
_helipad = (_this select 1);
_helipadPos = (getPos _helipad);

while { true } do {
  sleep 5;
  _nearObj = _helipadPos nearestObject "Air";
  if ((_nearObj distance _helipadPos) < 10) then {
    _helipadMarker setMarkerColor "colorRed";
  } else {
    _helipadMarker setMarkerColor "colorGreen";
  };
};