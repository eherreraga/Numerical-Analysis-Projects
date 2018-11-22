%Solve the following problems using Euler's Method with stepsize of h = .2,
%.1, .05. Compute the error and the relative error using the true answer
%Y(x). For selected values of x, observe the ratio by which the error
%decreases when h is halved
%1d)    Y'(x) = - [Y(x)]^2, 1 =< x =< 10, Y(1) = 1, Y(x) = 1/x
clc;
E =@(y) -(y)^2;
Y =@(x) 1/x;
X =@(y) 1/y;

fprintf('\n=================================================================\n')
fprintf('\nh = .2\n')
fprintf('\n=================================================================\n')
EulerMethod(1, 10, E, Y, X, .2, 1)
fprintf('\n=================================================================\n')
fprintf('\nh = .1\n')
fprintf('\n=================================================================\n')
EulerMethod(1, 10, E, Y, X, .1, 1)
fprintf('\n=================================================================\n')
fprintf('\nh = .05\n')
fprintf('\n=================================================================\n')
EulerMethod(1, 10, E, Y, X, .05, 1)