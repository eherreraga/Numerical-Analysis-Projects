function ResidualCalculation(A,b)
%(i)Create or read A and b(ii) Solve for Ax = b using GEpivot, calling
%computed solution x.(iii) Compute residual r = b - Ax, using the procedure
%described following(6.78).

%Solving using GEpivot Ax = b
[x, ~, ~] = GEpivot(A,b);

%Compute the residual
r = b - A * x;

fprintf('x:%5.f\tr:%.5f', x, r);



