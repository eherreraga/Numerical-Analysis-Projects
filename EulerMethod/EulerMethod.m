function  EulerMethod(x0, xEnd, Equation, Y, X, h, y0)
%EulerMethod - Yi+1 = Yi + h(F(Xi, Yi))
%x0 & xEnd - represent the range of x.
%Equation - represents the equation we are going to use to estimate
%Y - represents the real equation as a function of Y
%X - represents the real equation as a function of X
%h - this is the steps that x is going to take
%y0 - repres

%n - represents the number of iterations that we are going to make
n = fix((xEnd - x0)/h)+1;

%I am only using y0 in the Equation since  y' = -(y)^2
yi = y0 + h * Equation(y0);
x = x0;


for i = 1: n
    fprintf('X = %.5f, Y = %.5f, X = %.5f, Y = %.5f \n', x, yi, X(i), Y(i));
    x = x + h;
    y0 = yi;
    yi = y0 + h * Equation(y0);
end
end

