%% Secant Method
% given equations : f(x) = 8 * sin(x) * e(-x) - 1
% 3 iterations, x_{i-1} = 0.5, x_i = 0.4

clc, clear

ITER = 3;
x1 = 0.5;
x2 = 0.4;

%% Main Code

f = @(x) 8 * sin(x).* exp(-x) - 1;

[root, iter] = secant_method_f(f, x1, x2, ITER);
SIZE = length(root);

x = -2:0.1:4;
plot(x,f(x));
hold on
plot(x, zeros(1, length(x)));
plot(root(1:2), f(root(1:2)), 'go');
plot(root(3:SIZE), f(root(3:SIZE)), 'ro');
plot(root(SIZE), f(root(SIZE)), 'bo');
title("Secant Method");
xlabel("x");
ylabel("y");
legend("f(x) = 8 * sin(x) * e^{(-x)} - 1","y = 0","initial value"...
    ,"midterm root", "final root | MAX\_ITER = 3", "Location", "southeast");