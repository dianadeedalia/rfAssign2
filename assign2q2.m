%assign 2 q2
maxPow=2;
fc=1950*10^(6);
perm=4*pi*10^(-7);
Gt=1;
lowCond=0.207;
phoned=0.02;

skinsar=calculateSAR(fc, 1.24, perm,maxPow, Gt, phoned,60.68,1010,0,lowCond)
fatsar=calculateSAR(fc, 0.207, perm,maxPow, Gt, phoned,113.67,920,0,lowCond)
bonesar=calculateSAR(fc, 0.636, perm,maxPow, Gt, phoned,86.263,1810,0,lowCond)
%skin=calculateSAR(fc, 1.24, perm,maxPow, Gt, phoned,imp,dens,b,lowCond)
brainSaradFe=calculateSARBrain(fc, 1.79, perm,maxPow, Gt, phoned,55.707,1030,1,lowCond,0.078525)
brainSaradMa=calculateSARBrain(fc, 1.79, perm,maxPow, Gt, phoned,55.707,1030,1,lowCond,0.0829)
brainSarinFe=calculateSARBrain(fc, 1.79, perm,maxPow, Gt, phoned,55.707,1030,1,lowCond,0.06043)
brainSarinMa=calculateSARBrain(fc, 1.79, perm,maxPow, Gt, phoned,55.707,1030,1,lowCond,0.06201)