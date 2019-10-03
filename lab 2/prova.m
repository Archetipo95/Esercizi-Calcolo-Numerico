%somma = 0;
%n=100;
%i=0;
%while i<=n
%    somma=somma+i;
%    i=i+1;
%end


x = 1 ;
dif = 100 ; 
while dif > 1e-8 
    xnew = cos ( x ) ; 
    dif = abs ( xnew-x ) ; 
    x = xnew ;
end
disp(xnew);

