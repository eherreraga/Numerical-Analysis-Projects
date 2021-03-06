%Repeat the examples of the iterative solutions of (6.93) by the Jacobi
%and GaussSeidel Iteration methods, but do it for the following choices of
%right side b and true solution x. Use x^(0) = [0 0 0]^T. Iterate until
%||x-x^(k)|| ~< .00005. Look at the ratios of successive erros, as in Table
%6.2 and 6,3


%(b) b = [0 -7 7]^T, x = [0 -1 1]^T


%A used in (6.93)
A = [9, 1, 1; 
    2, 10, 3;
    3, 4, 11];


errorTolerance = .0005;
b = [16;44;59]
x0 = [0;0;0];


%===============(a) b = [16 44 59]^T, x = [1 3 4]^T=====================
x = GaussSeidel(b, x0, 30);
disp("Problem 1a) using GaussianMethod")
b
x0
x

