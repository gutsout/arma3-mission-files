// off: 0 = [0.95] execVM "lights.sqf";
// on: 0 = [0] execVM "lights.sqf";

_types = ["PortableHeliPadLight_01_red_F", "PortableHeliPadLight_01_white_F", "PortableHeliPadLight_01_blue_F", "PortableHeliPadLight_01_F",  "PortableHeliPadLight_01_yellow_F"];
_onoff = _this select 0;

// Define the blink interval in seconds
_blinkInterval = 0.5; // Adjust as needed

while {true} do {
    for [{_i=0},{_i < (count _types)},{_i=_i+1}] do {
        // lightsmarker is a marker I placed. 1000 is the distance around the marker
        _lamps = getMarkerPos "lightsmarker" nearObjects [_types select _i, 100];
        sleep 1;
        {_x setDamage _onoff} forEach _lamps;
    };
    sleep _blinkInterval;
    _onoff = abs(_onoff - 1); // Toggle between 0 and 1
};
