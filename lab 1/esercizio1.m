% estremo sinistro
a = -5; 
% estremo destro 
b = 5; 
% definisco la variabile stringa 
funs = 'x.^2-2*exp(x)./x'; 
% definisco la inline function fun
fun = inline(funs); 
% numero punti 
n = 1001; 
% vettore delle ascisse 
x = linspace(a, b, n); 
% vettore delle ordinate 
y = fun(x); 
% Disegna la curva nell’intervallo [a,b] 
plot(x,y)