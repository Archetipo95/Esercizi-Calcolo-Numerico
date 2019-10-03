f='(-5.*x)+exp(-x)';
fun=inline(f);
x=linspace(-5,5,1000);
fx=fun(x);

plot([-5 5],[0 0],"k-");
xlabel("ascisse");
hold on;
loglog(x,fx,"b--");
hold off;
title(f);
print("esercizio6-grafico","-dpdf");

toll=10^(-8);
iterazioni=100;
a=0;b=1;

[vc,sl,res,iter]=bisezione(f,a,b,toll,iterazioni);

acc = ceil(log2((b-a)/toll)-1);
disp('iterazioni necessarie: ');
disp(acc);
disp('iterazioni fatte: ');
disp(iter);

fileID=fopen("esercizio6-tabella.txt","w");
for k=1:iter
fprintf(fileID,'\n [k]:%3.0f [c]: %15.15f [AMP]: %5.2e [RES]:%5.2e  ',k,vc(k),res(k),sl(k));
end
fprintf('\n');
fclose(fileID);

figure("Name","Convergenza","Numbertitle","off");
semilogy(1:iter,abs(res),'g-o') ;
title('Profilo di convergenza Bisezione');
xlabel('Indice di iterazione');
ylabel('Residuo');
legend('bisezione');
print("esercizio6-ProfiloConvergenza","-dpdf");

