%% Modified Secant Method
% given equations : f(x) = 8 * sin(x) * e(-x) - 1
% 5 iterations, x_i = 0.3, delta = 10^-2 (0.01)

clc, clear

ITER = 5;
x1 = 0.3;
delta = 10^-2;

%% Main Code

f = @(x) 8 * sin(x).* exp(-x) - 1;

[root, iter] = modified_secant_method_f(f, x1, delta, ITER);
SIZE = length(root);

x = -2:0.1:4;
plot(x,f(x));
hold on
plot(x, zeros(1, length(x)));
plot(root(1:2), f(root(1:2)), 'go');
plot(root(3:SIZE), f(root(3:SIZE)), 'ro');
plot(root(SIZE), f(root(SIZE)), 'bo');
title("Modified Secant Method");
xlabel("x");
ylabel("y");
legend("f(x) = 8 * sin(x) * e^{(-x)} - 1","y = 0","initial value"...
    ,"midterm root", "final root | MAX\_ITER = 3", "Location", "southeast");