function sar = calculateSarWithAtt(fc, cond, perm,maxPow, Gt, d,imp,dens,b,lowCond,tissued)

%step 1
E=(7.746*(maxPow)^(1/2))/d; % simplified version of the formula given
%step 2
skinDepth=(1/(pi*fc*perm*lowCond))^(1/2);
Ex=E*exp((-1*tissued)/skinDepth);
%step 3
sar=(cond*(Ex^2))/(2*dens);
end

