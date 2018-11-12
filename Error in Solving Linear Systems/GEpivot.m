function [x,lu, piv] = GEpivot(A,b)
%6.3 Implemetation of the Gaussian elimination method with partial pivoting
[m,n] = size(A);
if m ~= n
    error('The matrix is not square.')
end

m = length(b);
if m ~= n
    error('The matrix and the vector do not match in size.')
end

%Initialization of the pivoting vector
piv = (1:n)';

%elimination step
for k = 1: n-1
    %Find the maximal element in the pivot column, below the
    %pivot position, along with the index of the maximal element.
    
    [~, index] = max(abs(A(k:n, k)));
    index = index + k - 1;
    if index ~= k
        %Switch rows k and index, in columns k through n.
        %Do similarly for the right-hand side b.
        
        tempA = A(k, k:n);
        A(k, k:n) = A(index, k:n);
        A(index, k:n) = tempA;
        
        tempb = b(k);
        b(k) = b(index);
        b(index) = tempb;
        
        temp = piv(k);
        piv(k) = piv(index);
        piv(index) = temp;
    end
    
    %Form the needed multipliers and store them into the pivot
    %column, below the diagonal.
    A(k+1: n, k) = A(k+1:n, k)/A(k, k);
    
    %Carry out the elimination step, first modifying the matrix,
    %and then modifying the right-hand side.
    
    for i = k+1:n
        A(i, k+1:n) = A(i, k+1:n) - A(i, k) * A(k, k+1:n);
    end
    
    %Could not solve this issue
    b(k+1:n) = b(k+1:n) - A(k+1:n, k) * b(k);
    
end

%Solve the upper triangular linear system

x = zeros(n, 1);
x(n) = b(n) / A(n, n);
for i = n-1: -1: 1
    x(i) = (b(i) - A(i, i+1:n) * x(i+1: n)) / A(i, i);
end

%Record the LU factorization with row permutation
lu = A;
        

end

