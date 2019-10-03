function[xv,scartiN,n]=secvar(f,x0,x1,toll,nmax)

scartiN=[];
xv=[x0,x1];
scarti=toll+1;
n=0;

while (abs(scarti)>=toll) && (n<=nmax)
    fx0=f(x0);
    fx1=f(x1);
    
    scarti= -(fx1*((x1-x0)/(fx1-fx0)));
    x0=x1;
    x1=x1+scarti;
    fx0=f(x0);
    fx1=f(fx1);
    xv=[xv,x1];
    scartiN=[scartiN,scarti];
    n=n+1;
end




