fun = inline('exp(-x)-cos(x)+3*x.^2');
fun1 = inline('-log(cos(x)-3*x.^2)');
fun2 = inline('acos(exp(-x)+3*x.^2)');
fun3 = inline('sqrt((1/3)*(cos(x)-exp(-x)))');
x=linspace(-0.5,0.5,100);
y=fun(x);
y1=fun1(x);
y2=fun2(x);
y3=fun3(x);

y0 = zeros(1,100);

hold on;
plot(x,y,'-y');
plot(x,y1,'-r');
plot(x,y2,'-g');
plot(x,y3,'-b');
plot(x,x,'-k');
plot(x,y0,'-k');
hold off;

legend('fun','fun1','fun2','fun3');
axis([-0.5 0.5 -0.5 0.5]);

