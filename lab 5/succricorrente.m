clc;
clear;

s=[];
t=[];

n=1:100;

s(1)= exp(-1)*(exp(1)-1);
for i=2:1:100
    s(i)=1-(i+1)*s(i-1);
end

t(1000)=0;
for i=999:-1:1
    t(i)=(1-t(i+1))/i;
end


hold on
semilogy(n,s(1:100),'k')
semilogy(n,t(1:100),'r')
hold off




