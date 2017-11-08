function [a,b,c,d]=deflection_curve_coefficients(len,uL,uR,upL,upR)

c = upL;
d = uL;
A = [len^3,len^2;3*len^2,2*len];
b = [uR-d-c*len;upR-c];
x=A\b;
a=x(1);
b=x(2);