%Compute solutions to the following problems with a second-order Taylor
%method. Use stepsizes h = 0.2, 0.1, 0.05.

%Problem 2d
%Y'(x) = -[Y(x)]^2, 1 <= x <= 10, Y(1) = 1; Y(x) = 1/x
clc;
clear all;

Taylor_2nd_degree(1, 10, .2)
Taylor_2nd_degree(1, 10, .1)
Taylor_2nd_degree(1, 10, .05)
