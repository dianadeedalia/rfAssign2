function radyy = circumtoradyy(listCircum)

for i=1:length(listCircum)
    rady=((listCircum(i))*10^(-2))/(2*pi);
    radyy(i)=rady-(1.02*10^(-2));
end
end
