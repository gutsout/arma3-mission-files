if (hasInterface) then 
{ 
 this addAction [ 
  "Take the Casefile",
  { [_this, "action"] spawn BIS_fnc_initIntelObject }, 
  [], 
  10, 
  true, 
  true, 
  "", 
  "isPlayer _this && { _this distance _target < 2 } && 
  { (side group _this) in (_target getVariable ['RscAttributeOwners', [west, east, resistance, civilian]]) }" 
 ]; 
};

if (isServer) then 
{ 
  this setVariable [ 
  "RscAttributeDiaryRecord_texture", 
  "img\simeon.jpg", 
  true 
 ]; 
 
 
 [ 
  this, 
  "RscAttributeDiaryRecord", 
  ["Simeon Nikolić File", "Simeon Nikolić, a prominent communist politician in Chernarus, faces suspicion of clandestine dealings with an unspecified foreign entity. Despite publicly championing socialist principles, evidence suggests covert communications, policy shifts aligning with foreign interests, and unauthorized information leaks. These circumstances raise concerns about Nikolić true allegiance and potential threats to Chernarus political integrity, warranting further investigation. (( Nikolić appartment marked on map. ))"] 
 ] call BIS_fnc_setServerVariable; 

 this setVariable ["recipients", [west, east, resistance, civilian], true]; 
 this setVariable ["RscAttributeOwners", [west, east, resistance, civilian], true]; 
};