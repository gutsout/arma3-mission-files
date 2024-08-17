dir = round(player getDirVisual signal);

resdist = "";
dist = round(player distance2D signal);
if (dist < 500)
   then { resdist = dist; };
if (dist > 500 and dist < 1000) 
    then { resdist = "500-1000m"; };
if (dist > 1000 and dist < 1500)
   then { resdist = "1000-1500m"; };
if (dist > 1500 and dist < 2000)
   then { resdist = "1500-2000m"; };
if (dist > 2500 and dist < 3000)
   then { resdist = "2500-3000m"; };
if (dist > 3000 and dist < 3500)
   then { resdist = "3000-3500m"; };
if (dist > 3500 and dist < 4000 )
   then { resdist = "3500-4000m"; };
if (dist > 3500 and dist < 4000)
   then { resdist = "3500-4000m"; };
if (dist > 4000 and dist < 4500)
   then { resdist = "4000m-4500m"; };
if (dist > 4500 and dist < 5000)
   then { resdist = "5000m+"; };

hint format ["Searching signal...\n\nSignal found!\nDistance: ~%1\nDirection: %2 - %3", resdist, dir -10, dir +10];
