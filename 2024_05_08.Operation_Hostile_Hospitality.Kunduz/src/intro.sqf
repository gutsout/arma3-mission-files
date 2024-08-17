titleCut ["", "BLACK OUT", 0];
_cam = "camera" camCreate (getPosASL mov1_0);
_cam camSetTarget look1_1;
player setCaptive true;

false setCamUseTI 0;
_cam cameraEffect ["internal", "BACK"];
showCinemaBorder true;

[
	[
		["3 MONTHS AFTER...", "<t align = 'center' shadow = '1' size = '0.7'>%1</t><br/>", 0],
		["OPERATION TOURIST TRAP", "<t align = 'center' shadow = '1' size = '1' font='PuristaBold'>%1</t>", 5]
	]
] spawn BIS_fnc_typeText;

playMusic "intro";
_cam camSetPos (getpos mov1_0);
_cam camCommit 6;
waitUntil { camCommitted _cam; };
titleCut ["", "BLACK IN", 1];

[
	[
		["Captured terrorists underwent interrogation, revealing information about Omar Sharif's cell.", "<t align = 'center' shadow = '1' size = '0.7'>%1</t><br/>", 5]
	],
	0, safeZoneH * 0.2 + safeZoneW * 0.2
] spawn BIS_fnc_typeText;

_cam camSetPos (getpos mov1_0);
_cam camCommit 0;
waitUntil { camCommitted _cam; };
titleCut ["", "BLACK IN", 1];
_cam camSetPos (getpos mov1_1);
_cam camCommit 7;
waitUntil { camCommitted _cam; };


titleCut ["", "BLACK OUT", 1];
_cam camSetPos (getpos mov1_2);
_cam camCommit 0;
waitUntil { camCommitted _cam; };
titleCut ["", "BLACK IN", 1];

_cam camSetPos (getpos mov1_3);
_cam camSetTarget look1_2;
_cam camCommit 5;
waitUntil { camCommitted _cam; };

titleCut ["", "BLACK OUT", 1];

// scene2
_cam camSetPos (getpos mov2_0);
_cam camSetTarget look2;
_cam camCommit 0;
waitUntil { camCommitted _cam; };
titleCut ["", "BLACK IN", 1];
[
	[
		["We successfully located and planted bugs on new vehicle deliveries destined for Sharif. The vehicle's trail led us to his safehouse.", "<t align = 'center' shadow = '1' size = '0.7'>%1</t><br/>", 5]
	],
	0, safeZoneH * 0.2 + safeZoneW * 0.2
] spawn BIS_fnc_typeText;
_cam camSetPos (getpos mov2_1);
_cam camCommit 8;
waitUntil { camCommitted _cam; };

// scene3
titleCut ["", "BLACK OUT", 1];             
_cam camSetPos (getpos mov3_0);
_cam camSetTarget look3;
_cam camCommit 0;
waitUntil { camCommitted _cam; };
titleCut ["", "BLACK IN", 1];


_cam camSetPos (getpos mov3_1);
_cam camCommit 5;
waitUntil { camCommitted _cam; };

titleCut ["", "BLACK OUT", 1];
_cam camSetPos (getpos mov3_0);
_cam camSetTarget look3_1;
_cam camCommit 0;
waitUntil { camCommitted _cam; };
titleCut ["", "BLACK IN", 1];

_cam camSetPos (getpos mov3_1);
_cam camCommit 7;
waitUntil { camCommitted _cam; };

// scene4
titleCut ["", "BLACK OUT", 1];
titleCut ["", "BLACK IN", 2];
[
	[
		["Sigma operatives are deployed with the objective of eliminating Sharif.", "<t align = 'center' shadow = '1' size = '0.7'>%1</t><br/>", 0]
	],
	0, safeZoneH * 0.2 + safeZoneW * 0.2
] spawn BIS_fnc_typeText;

true setCamUseTI 0;
_cam camSetPos (getpos mov4_0);
_cam camSetTarget look4;
_cam camCommit 0;
waitUntil { camCommitted _cam; };
titleCut ["", "BLACK OUT", 1];
titleCut ["", "BLACK IN", 1];

_cam camSetPos (getpos mov4_0);
_cam camCommit 3;
waitUntil { camCommitted _cam; };

titleCut ["", "BLACK OUT", 1];

_cam camSetPos (getpos mov4_1);
_cam camSetTarget look4_2;
_cam camCommit 0;
waitUntil { camCommitted _cam; };
titleCut ["", "BLACK IN", 1];

_cam camSetPos (getpos mov4_2);
_cam camCommit 6;
waitUntil { camCommitted _cam; };
titleCut ["", "BLACK OUT", 2];

_cam camSetPos (getpos mov4_2);
_cam camCommit 2;

waitUntil { camCommitted _cam; };
[
	[
		["OPERATION HOSTILE HOSPITALITY", "<t align = 'center' shadow = '1' size = '1' font='PuristaBold'>%1</t>", 5]
	]
] spawn BIS_fnc_typeText;

_cam camSetPos (getpos mov4_2);
_cam camCommit 2;
waitUntil { camCommitted _cam; };
// end

_cam cameraEffect ["Terminate", "Back"];
player setCaptive false;
camDestroy _cam;
titleCut ["", "BLACK IN", 2]; 

//

