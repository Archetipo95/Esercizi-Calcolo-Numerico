%Esempio di file script Matlab per disegnare una funzione
%previamente definita con il comando inline. 
%Uso dei comandi hold on e hold off per sovrapporre 
%piu' grafici nella stessa finestra grafica. Fa uso del comando input.


%DISEGNA Script per tracciare il grafico di una
%        funzione in un intervallo [a,b]
%
% Dati da fornire in ingresso:
%   funs:   stringa contenente l'espressione
%           della funzione (attenzione alle operazioni
%           che necessitano del . (punto)
%   a:      primo estremo
%   b:      secondo estremo
%   n:      numero di nodi equidistanti dell'intervallo
%           in cui viene valutata la funzione 

% Parte di ingresso dati
a = -2;
b = 2;
funs0 = '3*x-cos(x)';
funs1 = '3*x';
funs2 = 'cos(x)';

n = 1001;
%
fun0 = inline(funs0);
fun1 = inline(funs1);
fun2 = inline(funs2);
%
% Definisce il vettore delle ascisse
x = linspace(a, b, n);
%
% Definisce il vettore delle ordinate
y0 = fun0(x);
y1 = fun1(x);
y2 = fun2(x);
%
% Disegna la curva nell'intervallo [a,b]
hold on
plot(x,y0)
plot(x,y1)
plot(x,y2)
title('titolo')
xlabel('asse x')
ylabel('asse y')
% Disegna l'asse x nell'intervallo [a,b]

plot([a,b],[0,0],'k-')
hold off
savefig('esercizio5-rafico1')