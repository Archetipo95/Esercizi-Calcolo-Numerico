function [xv,scarti,iter,flag]=newtonmod(f,df,x,toll,nmax,r)
xv=x;
scarti=[];

dif=toll+1;
n=0;
flag =0;
    while ( abs( dif ) >= toll ) && ( n < nmax ) && ( flag ==0) 
        x_old=x;
        fx = f ( x ) ; %calcola il valore di f(x) (residuo)
        dfx = df ( x ) ;    %calcola il valore di f'(x)
        if dfx == 0 
            flag = 1 ;
        else
            dif = -fx/dfx ; % Calcolailvalore ?f ( x n ) / f ’ ( x n ) 
            x = x + r*dif ; % Calcola il valore x{n+1} 
            xv = [ xv ; x ] ; % Aggiunge al vettore la nuova iterata 
            scarti = [ scarti ; x-x_old ] ; % Aggiunge il nuovo scarto 
            n = n+1; %incrementa il contatore delle iterate
        end
    end
    iter = n;
end