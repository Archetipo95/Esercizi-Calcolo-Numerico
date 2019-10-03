a = 0.6;
b = 0.8;
funs1 = 'x.^(2)-1+exp(-x)';
n = 101;
fun1 = inline(funs1);
x = linspace(a, b, n);
y1 = fun1(x);
hold on
plot([a,b],[0,0],'k-')

plot(x,y1)
hold off

% sol1=0
% sol2=tra 0.7 e 0.75
