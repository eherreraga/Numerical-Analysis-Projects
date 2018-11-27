function  Taylor_2nd_degree(start, endV, h)
    
    fprintf('\n=================================================================\n')
    fprintf('\nh = %.5f', h)
    fprintf('\n=================================================================\n')
    
    %Number of iterations
    n = ((endV - start)/h) + 1;
    %The x-values
    X = linspace(start, endV, n);
    %The y-values
    Y = zeros(n - 1);
    %Initial point given in the problem
    Y(1) = 1;
    %This is the exact equation
    T = @(x) (1/x);
    
    
    for i = 2:n
        
        %Taylors Method to the second degree
        %Y'(x) = -[Y(x)]^2
        %Y''(x) = (-2Y(x))
        Y(i) = Y(i - 1) +  h *(-((Y(i - 1))^2)) + ((h^2)/2) * ((-2) * Y(i - 1));
        
        %For printing all the values
        %fprintf('X = %2.6f Y = %2.6f | X = %2.6f Y = %2.6f\n', X(i), Y(i), X(i), T(X(i)));
        
    end
    fprintf('X = %2.6f Y = %2.6f | X = %2.6f Y = %2.6f | Error = %2.9f\n', X(n), Y(n), X(n), T(X(n)), (T(X(n))-Y(n)));

end

