function [L,U]=lugauss(A)

n=size(A,1);

%L
for i=1:n
   L(i,i)=1;
   for j=i+1:n
      L(i,j)=0; 
   end
end

for k=1:n-1
 for i=k+1:n
    L(i,k)=A(i,k)/A(k,k);
    for j=k:n
       A(i,j)=A(i,j)-L(i,k)*A(k,j); 
    end
 end
end

U=A;
end