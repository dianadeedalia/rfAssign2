%assign2 qn 6
fcUplink=1950*10^6;
fcDownlink=2140*10^6;
maxPow=0.25;
Gt=1;
perm=4*pi*10^(-7);
lowCondUplink=0.207;
lowCondDownLink=0.229;
phoned=0;

brainSarUplink=calculateSAR3G(fcUplink, 1.79, perm,maxPow, Gt, phoned,55.707,1030,0,lowCond4g)
brainSarDownlink=calculateSAR3G(fcDownlink, 1.91, perm,maxPow, Gt, phoned,55.952,1030,0,lowCond4g)