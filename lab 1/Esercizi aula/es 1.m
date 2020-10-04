format long;  % set digits precision

%% Input
x = 123456789.0;  % input
y = 123456788.0;

%% Compure sum and difference
s = x + y;
d = x - y;

%% Single precision
sSingle = single(x) + single(y);
dSingle = single(x) - single(y);