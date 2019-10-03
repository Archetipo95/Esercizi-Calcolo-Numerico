% DISEGNA Script per disegnare una funzione in un intervallo [a,b]
% 
% Parte di ingresso dati 
a = input(' Dammi l''estremo sinistro: '); 
b = input(' Dammi l''estremo destro: '); 
funs = input(' Dammi la stringa funzione: '); 
n = input(' Dammi il numero di punti: '); 
%
disp(' Estremo sinistro'); 
disp(a) 
disp(' Estremo destro'); 
disp(b) 
disp(' Numero di punti'); 
disp(n) 
fun = inline(funs); 
disp(' Funzione'); 
disp(fun) 
%
% Definisce il vettore delle ascisse 
x = linspace(a, b, n); 
% Definisce il vettore delle ordinate 
y = fun(x); 
% Disegna la curva nell'intervallo [a,b] 
plot(x,y) 
% Disegna l'asse x nell'intervallo [a,b] 
hold on
plot([a,b],[0,0],'k-') 
hold off