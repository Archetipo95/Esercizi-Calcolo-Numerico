function[]=risultati_newton(a,b,f,xv,scarti,x0)
%RISULTATI NEWTON function per visualizzare risultati provenienti dalmetodo
%di Newton per la ricerca degli zeri di equazioni non lineari
%Uso:
%risultati newton(a,b,f,xv,scarti,x0)
%
xv=xv(:);
scarti=scarti(:);
n=length(scarti);
fprintf('\nf: %s \tIntervallo: a=%g b=%g Newton x0=%g\n\n',...
    formula(f),a,b,x0);
fprintf('n \t\t xn \t\t x_n-x_n-1 \n\n');
fprintf('%d\t %20.15f \t %10.2e \n',...
    [(1:n);xv(2:end)';scarti']);