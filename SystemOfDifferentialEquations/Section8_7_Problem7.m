%Section 8.7 Problem 7
%Using Euler's method, solve the system 
%A = [0, 1, 0; 0, 0, 1; -2, -5, -4]
%Y = [y1;y2;y3]
%G(x) = [0;0;2x^2+10+8]
%Y0 = [1; -1; 3]
%I am using the values that got for problem 3a
%Use stepsize h = .1, .05, .025
%Y' = AY + G(x)
clear all;
clc;

h = .1;
n = ((10 - 0)/h)+1;
x = linspace(0, 10, n);
y = zeros(n, 3);
y(1, :) = [1;-1;-3];

fprintf('X\t\tY1\tY2\t   Y3\t for h = %.5f\n', h)
for i = 2:n
    y(i, :) = (i -1) + h * equation(x(i -1), y(i -1, :));
    fprintf('%3.5f    %4.5f    %4.5f    %4.5f\n',x(i), y(i,1), y(i, 2), y(i, 3))
end
