% Definizione della funzione e dell'intervallo
f=inline('((x-1).^(2)).*log(x)'); a=1; b=3;
%Definizione della derivata prima
df=@(x) 2*(x-1).*log(x)+((x-1.^2)/x); 

% Inizializzazione dei parametri di ingresso
tol=1e-7;
itmax=100;
r=1;


% -----------------%
% PUNTO INIZIALE   %
% -----------------%
x0=1.1;

% Chiamata alla function newton perche' venga eseguita
[xN,scartiN,iterN,flag]=newtonmod(f,df,x0,tol,itmax,r);


risultati_newton(a,b,f,xN,scartiN,x0);

hold on

    [xN,scartiN,iterN,flag]=newtonmod(f,df,x0,tol,itmax,1);
    semilogy(1:iterN,abs(scartiN))
    
    [xN,scartiN,iterN,flag]=newtonmod(f,df,x0,tol,itmax,3);
    semilogy(1:iterN,abs(scartiN))
hold off



