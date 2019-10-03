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
a = -5;
b = 5;
funs1 = '1-x-(exp(1)).^(-2*x)';

n = 1001;
%
disp(' Estremo sinistro'); disp(a)
disp(' Estremo destro'); disp(b)
disp(' Numero di punti'); disp(n)
fun1 = inline(funs1);
disp(' Funzione'); disp(fun1)
%
% Definisce il vettore delle ascisse
x = linspace(a, b, n);
%
% Definisce il vettore delle ordinate
y1 = fun1(x);
%
% Disegna la curva nell'intervallo [a,b]
plot(x,y1)
title('titolo')
xlabel('asse x')
ylabel('asse y')
%gtext('clicca per scrivermi')
% Disegna l'asse x nell'intervallo [a,b]
hold on
plot([a,b],[0,0],'k-')
hold off
savefig('esercizio4-rafico1')