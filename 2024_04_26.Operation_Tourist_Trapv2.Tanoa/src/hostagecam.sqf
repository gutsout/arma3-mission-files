params ['_pipTarget', '_source'];

_cameraObject = 'camera' camCreate [0,0,0];
_dir = vectorDir _source;
_cameraObject setVectorDir _dir;
_cameraObject cameraEffect ["Internal", "Back", _pipTarget];
_cameraObject camSetFov 0.5;

_cameraObject setPosATL (getPosATL _source);
