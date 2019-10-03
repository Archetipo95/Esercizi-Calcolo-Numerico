exprf = '1-x-exp(-2*x)';  

x0=0.7;
x1=1;

toll=1e-8;
nmax=100;

f = inline(exprf);
x=linspace(x0,x1,nmax);
y=f(x);
plot(x,y,'b--');
hold on;
plot([x0 x1],[0 0],'k-');
title(exprf);
hold off;
print('secvarscript-fig1','-dpdf');

[xv,scartiN,iter]=secvar(f,x0,x1,toll,nmax);
if iter == nmax
   % Raggiunto il numero massimo di iterazioni
   fprintf('Raggiunto il numero massimo di iterate \n');
end

disp(' ');
fprintf('Ultima Soluzione = %2.4g \n',xv(end));

fprintf('Ultimo scarto = %2.4e \n',scartiN(end));

fprintf('Numero di iterate %g \n',iter);

figure(2)
n=1:iter;
semilogy(n,abs(scartiN),'g-o');
title('Grafico degli scarti');
print('GraficoScarti','-dpdf');

fileID=fopen("secvarscript-risultati.txt","w");
fprintf(fileID,'Itarezione \t Valore \t Scarto \n');
fprintf(fileID,'\t \t approssimato\t\n');
for i=1:iter
fprintf(fileID,'\n %2.0f \t\t %2.4f \t %2.2e',i,xv(i),scartiN(i));
end
fprintf('\n');
fclose(fileID);

ass=fzero(f,-1);
disp(ass);

