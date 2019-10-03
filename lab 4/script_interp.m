%def funzione
f=@(x) 1./(1+x.^2);

a=-5; b=5;

x = linspace(a,b,11);

y = feval(f,x);

c = polnewton (x,y);


xstar = linspace(a,b,201);
fxstar=feval(f,xstar);

pxstar = hornerN (x,c,xstar);

figure(1)
hold on;
plot(x,y,'ro');
plot(xstar,fxstar,'k-',xstar,pxstar,'r--'); 
legend('Punti','Funzione','Interpolante');
title('Polinomio interpolante e funzione 1./(1+x^2)');
hold off;

figure(2)
hold on;
plot(xstar,(fxstar-pxstar),'g-',xstar,zeros(size(xstar)),'k-');
title('Funzione errore E(x) per funzione 1./(1+x^2)');
hold off;




% xval = linspace(xn(1),xn(end));
% yval = polyval(coeff,xval);
% 
% hold on
% plot(xn,y,'or',xn,yval,'r--')
% plot(xn,y,'k')
% hold off