function  Problem3(x0,y0)
%Find all solutions to the system
%x^2 + xy^3 = 9
%3(x^3)y - y^3 = 4
%Use each of the initial guesses (x0, y0) = (1.2, 2.5), (-2, 2.5), (-1.2,
%-2.5), (2, -2.5). Oberve the root to which each of the iterations
%converges and the number of iterates computed.
%Initial points
I = [x0;y0];

F = @(x, y) x^2 + (x*y)^3 - 9;
Fx = @(x, y) 2*x + y^3;
Fy = @(x, y) 3*x*(y^2);

G = @(x, y) 3*(x^2)*y - y^3 - 4;
Gx = @(x, y) 6*x*y;
Gy = @(x, y) 3*x^2 - 3*y^2;

%Newton's Method [Fx(x0, y0), Fy(x0, y0); Gx(x0, y0), Gy(x0, y0)] *
%[Sx0;Sy0] = [F(x0, y0), G(x0, y0)]
%[x1;y1] = [x0;y0]+ [Sx0; Sy0]
A = [Fx(x0, y0), Fy(x0, y0);
     Gx(x0, y0), Gy(x0, y0)];
B = -1*[F(x0, y0);G(x0, y0)];

S = inv(A) * B;

%This is the answer
E = I + S;
fprintf('===============================\nX0 = %.4f Y0 = %.4f\n', x0, y0)
fprintf('X = %.4f\nY = %.4f\n Error = %.6f', E(1, 1), E(2, 1), )
end

