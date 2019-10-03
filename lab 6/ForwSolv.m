function [x]= ForwSolv(L,b,n)

for i=1:n
    x(i)=b(i);
    for j=1:i-1
       x(i)=x(i)-L(i,j)*x(j); 
    end
    x(i)=x(i)/L(i,i);
end

end