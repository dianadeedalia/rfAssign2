%Assignment 2 q1

%Calculating SAR values for various products
perm=4*pi*10^(-7);
Gt=1;
% sar=zeros(9,4);
% Nickelodeon tv
% 
fcNickTv=11.973*10^9;
powNickTv=400;
dNickTv=[0.8,0.9,1,1.1]
lowCondNickTv=2.13;

for j=1:length(dNickTv)
sarTV(j,1)=calculateSarWithAtt(fcNickTv, 10.3, perm,powNickTv, Gt, dNickTv(j),69.539,1010,0,lowCondNickTv,0.09);
sarTV(j,2)=calculateSarWithAtt(fcNickTv, 2.13, perm,powNickTv, Gt, dNickTv(j),130.310,920,0,lowCondNickTv,0.089);
sarTV(j,3)=calculateSarWithAtt(fcNickTv, 4.59, perm,powNickTv, Gt, dNickTv(j),110.217,1810,0,lowCondNickTv,0.0876);
sarTV(j,4)=calculateSarWithAtt(fcNickTv, 12.1, perm,powNickTv, Gt, dNickTv(j),66.438,1030,1,lowCondNickTv,0.081);
end

sarTV'
load nick.mat
T=table(

%Radio316
fcRadio316=103.9*10^6;
powRadio316=10000;
dRadio316=[10,50,100,150]
lowCondRadio316=0.069;

%calculateSarWithAtt(fc, cond, perm,maxPow, Gt, d,imp,dens,b,lowCond,tissued)

for i=1:length(dRadio316)
sarRad(i,1)=calculateSarWithAtt(fcRadio316, 0.496, perm,powRadio316, Gt, dRadio316(i),44.554,1010,0,lowCondRadio316,0.09);
sarRad(i,2)=calculateSarWithAtt(fcRadio316, 0.069, perm,powRadio316, Gt, dRadio316(i),106.208,920,0,lowCondRadio316,0.089);
sarRad(i,3)=calculateSarWithAtt(fcRadio316, 0.174, perm,powRadio316, Gt, dRadio316(i),72.022,1810,0,lowCondRadio316,0.0876);
sarRad(i,4)=calculateSarWithAtt(fcRadio316, 0.796, perm,powRadio316, Gt, dRadio316(i),40.188,1030,1,lowCondRadio316,0.081);
end

sarRad'

% % Cellular Base Transceivers (CBT)
fcCBT=947.5*10^6;
powCBT=100;
dCBT=[0.8,0.9,1,1.1]
lowCondCBT=0.113;
for k=1:length(dCBT)
sarCB(k,1)=calculateSarWithAtt2G(fcCBT, 0.882, perm,powCBT, Gt, dCBT(k),58.734,1010,0,lowCondCBT,0.09);
sarCB(k,2)=calculateSarWithAtt2G(fcCBT, 0.113, perm,powCBT, Gt, dCBT(k),112.151,920,0,lowCondCBT,0.089);
sarCB(k,3)=calculateSarWithAtt2G(fcCBT, 0.351, perm,powCBT, Gt, dCBT(k),82.862,1810,0,lowCondCBT,0.0876);
sarCB(k,4)=calculateSarWithAtt2G(fcCBT, 1.28, perm,powCBT, Gt, dCBT(k),53.748,1030,1,lowCondCBT,0.081);
end

sarCB'

% % Personal Monitors (PM)

fcPM=691.5*10^6;
powPM=0.03;
dPM=[0,0.01,0.02,0.03]
lowCondPM=0.096;
for l=1:length(dPM)
sarPM(l,1)=calculateSAR(fcPM, 0.797, perm,powPM, Gt, dPM(l),57.626,1010,0,lowCondPM);
sarPM(l,2)=calculateSAR(fcPM, 0.096, perm,powPM, Gt, dPM(l),111.658,920,0,lowCondPM);
sarPM(l,3)=calculateSAR(fcPM, 0.293, perm,powPM, Gt, dPM(l),81.687,1810,0,lowCondPM);
sarPM(l,4)=calculateSAR(fcPM, 1.17, perm,powPM, Gt, dPM(l),52.739,1030,1,lowCondPM);
end

sarPM'
% 
% % Mobile phones (MP)
fcMP=1.8*10^9;
powMP=0.25;
dMP=[0,0.01,0.02,0.03]
lowCondMP=0.26;
for m=1:length(dMP)
sarMP(m,1)=calculateSAR3G(fcMP, 1.25, perm,powMP, Gt, dMP(m),61.803,1010,0,lowCondMP);
sarMP(m,2)=calculateSAR3G(fcMP, 0.26, perm,powMP, Gt, dMP(m),123.094,920,0,lowCondMP);
sarMP(m,3)=calculateSAR3G(fcMP, 0.45, perm,powMP, Gt, dMP(m),93.093,1810,0,lowCondMP);
sarMP(m,4)=calculateSAR3G(fcMP, 1.29, perm,powMP, Gt, dMP(m),57.345,1030,1,lowCondMP);
end

sarMP'
% 
% % Smart meters (SM)
fcSM=900*10^6;
powSM=1;
dSM=[0.15,0.2,0.25,0.3]
lowCondSM=0.17;
for n=1:length(dSM)
sarSM(n,1)=calculateSarWithAtt2G(fcSM, 0.65, perm,powSM, Gt, dSM(n),59.094,1010,0,lowCondSM,0.09);
sarSM(n,2)=calculateSarWithAtt2G(fcSM, 0.17, perm,powSM, Gt, dSM(n),119.217,920,0,lowCondSM,0.089);
sarSM(n,3)=calculateSarWithAtt2G(fcSM, 0.33, perm,powSM, Gt, dSM(n),82.464,1810,0,lowCondSM,0.0876);
sarSM(n,4)=calculateSarWithAtt2G(fcSM, 0.86,perm,powSM, Gt, dSM(n),58.805,1030,1,lowCondSM,0.081);
end

sarSM'

% % Wireless Access Points (WAP)
fcWAP=2.4*10^9;
powWAP=0.1;
dWAP=[0.03,0.04,0.05,0.06]
lowCondWAP=0.261;
for o=1:length(dWAP)
sarWAP(o,1)=calculateSarWithAtt(fcWAP, 1.44, perm,powWAP, Gt, dWAP(o),61.077,1010,0,lowCondWAP,0.09);
sarWAP(o,2)=calculateSarWithAtt(fcWAP, 0.261, perm,powWAP, Gt, dWAP(o),114.717,920,0,lowCondWAP,0.089);
sarWAP(o,3)=calculateSarWithAtt(fcWAP, 0.788, perm,powWAP, Gt, dWAP(o),87.415,1810,0,lowCondWAP,0.0876);
sarWAP(o,4)=calculateSarWithAtt(fcWAP, 2.07, perm,powWAP, Gt, dWAP(o),56.262,1030,1,lowCondWAP,0.081);
end

sarWAP'
% 
% % Bluetooth Dongle (BD)
fcBD=5*10^9;
powBD=0.1;
dBD=[0.4,0.5,0.1,0.15]
lowCondBD=0.68;
for p=1:length(dWAP)
sarBD(p,1)=calculateSarWithAtt(fcBD, 3.06, perm,powBD, Gt, dBD(p),63.009,1010,0,lowCondBD,0.09);
sarBD(p,2)=calculateSarWithAtt(fcBD, 0.68, perm,powBD, Gt, dBD(p),118.626,920,0,lowCondBD,0.089);
sarBD(p,3)=calculateSarWithAtt(fcBD, 1.81, perm,powBD, Gt, dBD(p),94.25,1810,0,lowCondBD,0.0876);
sarBD(p,4)=calculateSarWithAtt(fcBD, 4.19, perm,powBD, Gt, dBD(p),58.806,1030,1,lowCondBD,0.081);
end

sarBD'

% % PC WIFI
fcPC=2.4*10^9;
powPC=0.01;
dPC=[0.03,0.04,0.05,0.06]
lowCondPC=0.261;
for q=1:length(dPC)
sarPC(q,1)=calculateSarWithAtt(fcPC, 1.44, perm,powPC, Gt, dPC(q),61.077,1010,0,lowCondPC,0.09);
sarPC(q,2)=calculateSarWithAtt(fcPC, 0.261, perm,powPC, Gt, dPC(q),114.717,920,0,lowCondPC,0.089);
sarPC(q,3)=calculateSarWithAtt(fcPC, 0.788, perm,powPC, Gt, dPC(q),87.415,1810,0,lowCondPC,0.0876);
sarPC(q,4)=calculateSarWithAtt(fcPC, 2.07, perm,powPC, Gt, dPC(q),56.262,1030,1,lowCondPC,0.081);
end

sarPC'
% sar
% 
% 
% 
% 








