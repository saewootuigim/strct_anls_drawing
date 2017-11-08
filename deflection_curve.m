function v = deflection_curve(x,c)

L = x(end);
switch c
    case 1 % theta A
        v = x.^3/L^2-2*x.^2/L+x;
    case 2
        v = x.^3/L^2-x.^2/L;
    case 3
        v = 2*x.^3/L^3-3*x.^2/L^2;
    case 4
        v = -2*x.^3/L^3+3*x.^2/L^2;
end