%plotting the variation of electric field with distance for GSM 900

y=[155, 77.4, 38.7, 15.5, 7.74, 3.87, 1.55];
x=[0.05, 0.10, 0.20, 0.50, 1, 2, 5];
plot(x,y)
y1=interp1(x,y,0.02,'pchip')
y2=interp1(x,y,0.02,'linear','extrap')

y3=interp1(x,y,0,'pchip')
y4=interp1(x,y,0,'linear','extrap')

y5=interp1(x,y,0.1,'pchip')
y6=interp1(x,y,0.1,'linear','extrap')