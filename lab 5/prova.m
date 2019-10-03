clc;
clear;
format long e;
xv = [];
L=15;
for n=1:L
    xv = [xv ; 10^(-n)];
end

f=@(x) (1+x)-1;
yv=feval(f,xv);

%non so se sia giusto
err_rel=abs((xv-yv)/xv);

%perc = err_rel(:,1).*100;

fprintf('n \t prima \t\t\t dopo \t\t\t errore \n');
fprintf('%d \t %e \t %e \t %e \n', [1:L;xv(1:L)';yv(1:L)';err_rel(:,1)']);
