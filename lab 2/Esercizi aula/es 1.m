a = input('x² coefficient (~= 0)?    ');
b = input('x coefficient?    ');
c = input('known term?    -');

if a == 0
    error('x² coefficient is null.');
else
    a, b, c  % show input
    if b == 0
        x1 = sqrt(-c / a);
        x2 = -x1;
    else
        delta = b ^ 2 - 4 * a * c;  % calculate D
        if delta < 0
            error('Delta < 0')
        else
            if delta == 0
                x1 = -b / (2 * a);  % 2 equals solutions
                x2 = x1;
            else
                x1 = (-b - sign(b) * sqrt(delta)) / (2 * a);  % standard 2-deg equation
                x2 = c / (a * x1);  % clever way to reduce numerical errors
            end
        end
    end
    
    disp('Solution:')
    x1, x2
end