%Eduardo Herrera
function AB2(a, b, h)

% a and b - range
% h - the steps it takes

fprintf('\n=================================================================\n')
fprintf('\nh = %.5f', h)
fprintf('\n=================================================================\n')

%The exact equation
T = @(x) 1/x;

%Function Given
F = @(x,y) -((y)^2);

%n-steps
n = ((b - a)/h) + 1;

%The x-values
X = linspace(a, b, n);

Y(1) = 1;
Y(2) = Y(1) + h * (F(X(1), Y(1)));

for i = 2:n
    
  %Second-Order Adams-Bashforth Method 
  % Yn+1 = Yn + (h/2)[3F(Xn, Yn) - F(Xn-1, Yn-1)]
  Y(i + 1) = Y(i) + (h/2) * (3 * F(X(i), Y(i)) - F(X(i - 1), Y(i - 1)));
  
  %Printing all the values
  %fprintf('X = %2.6f Y = %2.6f | X = %2.6f Y = %2.6f\n', X(i), Y(i), X(i), T(X(i)));
        
end
fprintf('X = %2.6f Y = %2.6f | X = %2.6f Y = %2.6f | Error = %2.9f\n', X(n), Y(n), X(n), T(X(n)), (T(X(n))-Y(n)));

end

