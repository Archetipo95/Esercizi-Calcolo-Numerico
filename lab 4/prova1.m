x = [-2 1 3];
y = [-2 11 17];

grado = length(x)-1;
coeff = polyfit(x,y,grado);

xval = linspace(x(1),x(end));
yval = polyval(coeff,xval);

plot(x,y,'o',xval,yval,'r')