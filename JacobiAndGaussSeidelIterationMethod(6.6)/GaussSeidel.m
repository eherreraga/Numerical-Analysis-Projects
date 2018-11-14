function [x] = GaussSeidel(b, x0, itr)
%GaussSeidel Method:
% x^(k + 1) = D^-1(b-Rx^(k))
%   A - Its going to be the matrix
%   b - right side vector
%   x0 - initial strating approximation
%   error - error tolerance

clc;

 i = 0;
 
 %Iterative process
 while itr > i
     x0(1,1) = 1/9*(b(1,1) - x0(2,1) - x0(3,1));
     x0(2,1) = 1/10*(b(2,1) - 2*x0(1,1) - 3*x0(3,1));
     x0(3,1) = 1/11*(b(3,1) - 3*x0(1,1) - 4*x0(2,1));
     i = i + 1;
 end
  x = x0;

end

