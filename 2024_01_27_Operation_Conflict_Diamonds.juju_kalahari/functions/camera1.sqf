private _camera = "camera" camCreate getPosATL camviewer; 

cameraEffectEnableHUD false;
player setCaptive true;
camUseNVG false;
showCinemaBorder true;
_camera say2D "lotus";
titlecut ["","BLACK IN", 3];


_camera camSetPos getPosATL cammove3_1;
_camera camSetTarget camtarget3; 
_camera cameraEffect ["internal", "back"];
_camera camCommit 0;

_camera camSetTarget camtarget3_1;
_camera camCommit 2;
waitUntil { camCommitted _camera; };

_camera camSetPos getPosATL cammove3_2;
_camera camCommit 3;
waitUntil { camCommitted _camera; };

_camera camSetPos getPosATL cammove3_3;
_camera camCommit 3;
waitUntil { camCommitted _camera; };

_camera camSetPos getPosATL cammove4;
_camera camSetTarget camtarget4; 
_camera camCommit 5;
waitUntil { camCommitted _camera; };

_camera camSetPos getPosATL cammove5;
_camera camSetTarget camtarget5; 
_camera camCommit 7;
waitUntil { camCommitted _camera; };

_camera camSetPos getPosATL cammove6;
_camera camCommit 5;
waitUntil { camCommitted _camera; };

_camera camSetTarget camtarget5_1; 
_camera camCommit 4;
titlecut ["","BLACK OUT", 2];
waitUntil { camCommitted _camera; };


_camera camSetPos getPosATL camviewer;
_camera camSetTarget camtarget1;
_camera camCommit 0; 
titlecut ["","BLACK IN", 2];

_camera camSetPos getPosATL cammove1;
_camera camCommit 9; 
waitUntil { camCommitted _camera; };


_camera camSetTarget camtarget2;
_camera camSetPos getPosATL cammove2;
_camera camCommit 7;
waitUntil { camCommitted _camera; };

"Operation: Conflict Diamonds" call BIS_fnc_moduleMissionName;
_camera camSetPos getPosATL cammove3;
_camera camCommit 5;
waitUntil { camCommitted _camera; };

titlecut ["","BLACK OUT", 2];
titlecut ["","BLACK IN", 2];
_camera cameraEffect ["Terminate", "Back"];
player setCaptive false;
camDestroy _camera;


