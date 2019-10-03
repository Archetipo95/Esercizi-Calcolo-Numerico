function[xv,slv,fxv,n]=esercizio2(f,a,b,toll,itermax)
%metodo di bisezione

%dati in ingresso
%   f:funzione (inline function)
%   a:estremo sx
%   b:estemo dx
%   toll:tolleranza per test di arresto
%   nmax:massimo indice permesso dell'iterata

%dati in uscita
%   xv:vettore contenete le iterate
%   slv:vettore contenente le semilunghezze degli intervalli
%   fxv:vettore contenete i corrispondenti residui
%   n:indice dell'iterata finale clacolata


xv=[];
slv=[];
fxv=[];
n=[];
for index=1:itermax
    
    %punto medio c e valore di f in c
    c=(a+b)/2;
    fun=inline(f);
    fc=fun(c);
    
    %calcolo f(a) e f(b)
    fa=fun(a);
    fb=fun(b);
    
    %semilunghezza del nuovo intervallo
    semilunghezza=(b-a)/2;
    
    %calcolo del residuo
    res=fun(c);
    
    %salvo i dati nei vettori
    xv=[xv a];
    slv=[slv semilunghezza];
    fxv=[fxv res];
    n=[n index];
    
    %test d'arresto
    if(res<toll && semilunghezza<toll)
        n=index; 
        return;
    end
    
    %nuovo intervallo 
    if sign(fc)==sign(fa)
        a=c;
        fa=fc;
    else
        b=c;
        fb=fc;
    end   
end
n=itermax;