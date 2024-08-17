titleCut ["", "BLACK IN", 7];
playSound "intro";
_cam = "camera" camCreate (getPosASL mov1_black);
_cam camSetTarget look1;
player setCaptive true;


_cam cameraEffect ["internal", "BACK"];
showCinemaBorder true;


_cam camSetPos (getpos mov1_0);
_cam camCommit 4;
waitUntil { camCommitted _cam; };
[
	[
		["OPERATION TOURIST TRAP,", "<t align = 'center' shadow = '1' size = '0.7' font='PuristaBold'>%1</t>", 20],
		["Tanoa", "<t align = 'center' shadow = '1' size = '0.7'>%1</t><br/>", 20]
	]
] spawn BIS_fnc_typeText;

_cam camSetPos (getpos mov1_1);
_cam camCommit 6;
waitUntil { camCommitted _cam; };

_cam camSetPos (getpos mov1_2);
_cam camCommit 7;
waitUntil { camCommitted _cam; };

_cam camSetPos (getpos mov1_3);
_cam camCommit 7;
waitUntil { camCommitted _cam; };
[
	[
		["T2000: Tanoa is at the peak of tourist season. Tourists and locals were enjoying the nightlife.", "<t align = 'center' shadow = '1' size = '0.7'>%1</t><br/>", 20]
	], 
	0, safeZoneH * 0.2 + safeZoneW * 0.2
] spawn BIS_fnc_typeText;
_cam camSetPos (getpos mov1_4);
_cam camCommit 10;
waitUntil { camCommitted _cam; };

_cam camSetPos (getpos mov1_5);
_cam camCommit 7;
waitUntil { camCommitted _cam; };



// scene2

titleCut ["", "BLACK IN", 2];
_cam camSetPos (getpos mov2_0);
_cam camSetTarget look2;
_cam camCommit 0;
waitUntil { camCommitted _cam; };


_cam camSetPos (getpos mov2_1);
_cam camCommit 5;
waitUntil { camCommitted _cam; };

[
	[
		["T2035: Extremist group launched a surprise attack and have overtaken police checkpoints.", "<t align = 'center' shadow = '1' size = '0.7'>%1</t><br/>", 15]
	],
	0, safeZoneH * 0.2 + safeZoneW * 0.2
] spawn BIS_fnc_typeText;

_cam camSetPos (getpos mov2_2);
_cam camCommit 10;
waitUntil { camCommitted _cam; };


_cam camSetPos (getpos mov2_3);
_cam camCommit 5;
waitUntil { camCommitted _cam; };
titleCut ["", "BLACK OUT", 2]; 


// scene3
[
	[
		["T2200: Terrorist group reached major cities in southern Tanoa.", "<t align = 'center' shadow = '1' size = '0.7'>%1</t><br/>", 20]
	],
	0, safeZoneH * 0.2 + safeZoneW * 0.2
] spawn BIS_fnc_typeText;
_cam camSetPos (getpos mov3_0);
_cam camSetTarget look3;
_cam camCommit 0;
waitUntil { camCommitted _cam; };
titleCut ["", "BLACK IN", 1];


_cam camSetPos (getpos mov3_1);
_cam camCommit 7;
waitUntil { camCommitted _cam; };
titleCut ["", "BLACK OUT", 5];

_cam camSetPos (getpos mov3_2);
_cam camCommit 7;
waitUntil { camCommitted _cam; };

_cam camSetPos (getpos mov3_2);
_cam camCommit 5;
waitUntil { camCommitted _cam; };

// end

_cam cameraEffect ["Terminate", "Back"];
player setCaptive false;
camDestroy _cam;
titleCut ["", "BLACK IN", 2]; 

//

