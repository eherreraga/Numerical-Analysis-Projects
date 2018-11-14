function [x] = Jacobi(A, b, x0, error)
%Jacobi Method:
% x^(k + 1) = D^-1(b-Rx^(k))
%   A - Its going to be the matrix
%   b - right side vector
%   x0 - initial strating approximation
%   error - error tolerance
%   maxItr - the max iterations before coming to an end
clc;

[R, C] = size(A);

if R ~= C
    error('A is not a square matrix...')
end


%Will produce a matrix with only the diagonal numbers in its diagonal line.
 D = diag(diag(A)); 
 
 err = inf;
 %Iterative process
 while err > error
     
     dx = D\(b - A * x0);
     x0 = x0 + dx;
     
     err = abs(dx./x0);
 end
  x = x0;

end

