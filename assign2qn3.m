%assign2 q3
maxPow4g=0.2;
maxPow5g=0.1;
fc4g=1.8*10^9;
fc5g=6*10^9;
Gt=1;
perm=4*pi*10^(-7);
lowCond4g=0.26;
lowCond5g=0.872;
phoned=0;

skinSar4g=calculateSAR3G(fc4g, 1.25, perm,maxPow4g, Gt, phoned,61.803,1010,0,lowCond4g)
fatSar4g=calculateSAR3G(fc4g, 0.26, perm,maxPow4g, Gt, phoned,123.094,920,0,lowCond4g)
boneSar4g=calculateSAR3G(fc4g, 0.45, perm,maxPow4g, Gt, phoned,93.093,1810,0,lowCond4g)
brainSar4g=calculateSAR3G(fc4g, 1.29, perm,maxPow4g, Gt, phoned,57.345,1030,1,lowCond4g)

skinSar5g=calculateSAR3G(fc5g, 3.89, perm,maxPow5g, Gt, phoned,63.816,1010,0,lowCond5g)
fatSar5g=calculateSAR3G(fc5g, 0.872, perm,maxPow5g, Gt, phoned,120.428,920,0,lowCond5g)
boneSar5g=calculateSAR3G(fc5g, 2.23, perm,maxPow5g, Gt, phoned,96.698,1810,0,lowCond5g)
brainSar5g=calculateSAR3G(fc5g, 5.2, perm,maxPow5g, Gt, phoned,59.834,1030,1,lowCond5g)