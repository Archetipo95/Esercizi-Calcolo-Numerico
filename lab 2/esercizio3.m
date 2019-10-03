% Esempio da commentare
 f='x.^(2)-1+exp(-x)';
 a=0.7;
 b=0.75;
 toll=10^(-8);
 maxit=23;

% Definizione della funzione e dell'intervallo
%f= input(' Dammi la funzione: '); 
%a= input(' Dammi estremo sinistro: ');
%b= input(' Dammi estremo destro: ');

% Inizializzazione dei parametri di ingresso
%toll= input(' Dammi la tolleranza (es 10^(-15)): ');
%maxit= input(' Dammi il numero ma di iterazioni: ');

% Chiamata alla function bisezione perche' venga eseguita
[vc,sl,vr,iter]=bisezione(f,a,b,toll,maxit);

disp('Ultima iterata:');
disp(vc(1,end));

disp('Residuo ultima iterata:');
disp(vr(1,end));

disp('Iterata numero:');
disp(iter);

x=1:iter;
semilogy(x,abs(vr));

