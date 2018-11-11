%This function is going to approximate the integral by using the
%Trapezoidal Rule
f = @(x) (sqrt(x));
a = 0;
b = 1;
n = input("Enter the N = ");
deltaX = ((b - a)/n);
sum = 0;

%Evaluate the first and last term that are not being multiplyed by 2
f0 = f(a);
f1 = f(b);

%We are going to calculate all the trapezoids that are in the middle,
%excluding f(x0) and f(xn)
while(a < b)
    a = a + deltaX;
    sum = sum + 2*(f(a));
end
%Going to add the change of x over 2, plus the first f(x0), f(xn), and all
%the trapezoids in between times 2.
area = (deltaX/2)*(f0+sum+f1);
disp(area)