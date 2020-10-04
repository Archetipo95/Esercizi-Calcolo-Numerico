format long;  % set digits precision

%% Input
a = 123456789.0;  % input
aSingle = single(a);  % get single precision

errAbs = abs(a - aSingle);  % absolute error
errRel = errAbs / a;  % relative error