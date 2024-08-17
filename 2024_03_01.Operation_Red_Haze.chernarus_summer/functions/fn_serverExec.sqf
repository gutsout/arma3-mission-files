//if you're looking at this you better stop snopping around smh my head
if (!isServer) exitWith {};
params ["_params", ["_execFnc",""]];
if !(toLower(_execFnc select [0, 3]) isEqualTo "ssg") exitWith { diag_log format["SSG SERVER EXEC ILLEGAL call for %1", _execFnc] };

_params spawn (call compile _execFnc);
