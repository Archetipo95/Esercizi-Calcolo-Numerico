a = input('x² coefficient (~= 0)?    ');
b = input('x coefficient?    ');
c = input('known term?    -');

if a == 0 || b == 0 || c == 0
    error('At least one of the coefficients is null.');
else
    a, b, c  % show input
    delta = b ^ 2 - 4 * a * c;  % calculate D
    if delta < 0
        error('Delta < 0')
    else
        if delta == 0
            x1 = -b / (2 * a);  % 2 equals solutions
            x2 = x1;
        else
            x1 = (-b - sqrt(delta)) / (2 * a);  % standard 2-deg equation
            x2 = (-b + sqrt(delta)) / (2 * a);
        end
        
        disp('Solution:')
        x1, x2
    end
end
