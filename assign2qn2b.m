%assign2q2b
fc=2.4*10^9;
maxPow=100*10^(-3);
wifid=0.05;
perm = 4*pi*10^(-7);
Gt=1;
lowCond= 0.261;

skinSar=calculateSAR(fc, 1.44, perm,maxPow, Gt, wifid,61.077,1010,0,lowCond)
FatSar=calculateSAR(fc, 0.261, perm,maxPow, Gt, wifid,114.717,920,0,lowCond)
BoneSar=calculateSAR(fc, 0.788, perm,maxPow, Gt, wifid,87.415,1810,0,lowCond)

femaleCircum=[37.65,44.33,47.03,48.59,49.66,50.21,50.67,51.05,51.10];
maleCircum=[38.51,45.58,48.34,49.88,50.90,51.41,51.93,52.19,52.23];
femaleradii=circumtoradyy(femaleCircum)
maleradii=circumtoradyy(maleCircum)

for i=1:length(femaleradii)
    femaleSar(i)=calculateSARBrain(fc, 2.07, perm,maxPow, Gt, wifid,56.262,1030,1,lowCond,femaleradii(i));
end

for j=1:length(maleradii)
    maleSar(j)=calculateSARBrain(fc, 2.07, perm,maxPow, Gt, wifid,56.262,1030,1,lowCond,maleradii(j));
end

femaleSar
maleSar
