function ResidualCalculation(A,b)
%(i)Create or read A and b(ii) Solve for Ax = b using GEpivot, calling
%computed solution x.(iii) Compute residual r = b - Ax, using the procedure
%described following(6.78).

%Problem 1c) H5x = [1, .06, 0.4, 0.3, 0.3]^T, where is H5 defined in (6.92)

%Solving using GEpivot Ax = b
[x, ~, ~] = GEpivot(A,b);

%Compute the residual
r = b - A * x;

fprintf('x:%5.f\tr:%.5f', x, r);



