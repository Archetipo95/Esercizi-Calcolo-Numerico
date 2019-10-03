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
a = 0;
b = 2;
funs1 = '(x.^2)+exp(-2*x)-0.181734';

n = 101;
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
hold on

title('titolo')
xlabel('asse x')
ylabel('asse y')
% Disegna l'asse x nell'intervallo [a,b]

plot([a,b],[0,0],'k-')
plot(x,x,'k-')

plot(x,y1)
hold off