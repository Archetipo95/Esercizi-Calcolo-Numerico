a = input('x² coeff (~= 0)?    ');
b = input('x coeff?    ');
c = input('known term?    -');

if a == 0 || b == 0 || c == 0
    error('At least one of the coeffs is null.');
else
    a, b, c  % show input
    diffs = b ^ 2 - 4 * a * c;  % calculate D
    if diffs < 0
        error('diffs < 0')
    else
        if diffs == 0
            x1 = -b / (2 * a);  % 2 equals solutions
            x2 = x1;
        else
            x1 = (-b - sqrt(diffs)) / (2 * a);  % standard 2-deg equation
            x2 = (-b + sqrt(diffs)) / (2 * a);
        end
        
        disp('Solution:')
        x1, x2
    end
end
