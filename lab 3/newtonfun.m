function [xv,scarti,iter,flag]=newtonfun(f,df,x,toll,nmax)
xv=x;
scarti=[];

dif=toll+1;
n=0;
flag =0;
    while ( abs ( dif ) >= toll ) && ( n < nmax ) && ( flag ==0) 
        fx = f ( x ) ; %calcola il valore di f(x) (residuo)
        dfx = df ( x ) ;    %calcola il valore di f'(x)
        if dfx == 0 
            flag = 1 ;
        else
            x_old = x;
            dif = -fx/dfx ; % Calcolailvalore ?f ( x n ) / f ’ ( x n )
            x = x + dif ; % Calcola il valore x{n+1} 
            xv = [ xv ; x ] ; % Aggiunge al vettore la nuova iterata 
            scarti = [ scarti ; x-x_old ] ; % Aggiunge il nuovo scarto 
            n = n+1; %incrementa il contatore delle iterate
        end
    end
    iter = n;
end