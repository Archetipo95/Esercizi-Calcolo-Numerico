function u= hornerN (x, c, xstar)

n1=length(x);
if(n1~=length(c))
   error('numero inconsistente') 
end

u=c(n1);

for j=n1-1:-1:1
    u=u.*(xstar-x(j))+c(j);
end
end