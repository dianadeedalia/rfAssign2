function sar=calculateSAR(fc, cond, perm,maxPow, Gt, phoned,imp,dens,b,lowCond)

switch b
    case 0
        skinDepth=(1/(pi*fc*perm*lowCond))^(1/2);
        d=phoned + skinDepth;
        Pt=maxPow/8;
        powDen=(Pt*Gt)/(4*pi*d^2);
        Esq=powDen*imp;
        sar=(cond*Esq)/(2*dens);
        
    case 1
        braind=8.1*10^(-2);
        skinDepth=(1/(pi*fc*perm*lowCond))^(1/2);
        atten=8.686*skinDepth/braind;
        Pt=10*log10((maxPow/8)/(1*10^(-3)));
        Pbrain=(10^((Pt-atten)/10))*10^(-3);
        powDen=(Pbrain*Gt)/(4*pi*braind^2);
        Esq=powDen*imp;
        sar=(cond*Esq)/(2*dens);

    
       
end
    
end
    
    