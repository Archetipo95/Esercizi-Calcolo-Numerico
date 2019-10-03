%Per gli studenti non presenti in laboratorio: 
%per esercizio si trasformi lo script radici.m 
%nella function funradici.m.

a=1; b=-3; c = 2;
 delta = b^2-4*a*c;
 if delta < 0
    disp('radici complesse')
 else
    x1 = (-b-sqrt(delta))/(2*a)
    x2 = (-b+sqrt(delta))/(2*a)
 end


