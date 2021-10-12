%% Init

clc, clear;

f1 = figure; % bisection method root
f2 = figure; % bisection method error

%%  Initial Variable

%   function ln(x^4) = 0.7
f = @(x) log(x^4) - 0.7;

%   x_l = 0.5 and x_u = 2
x_l = 0.5;
x_u = 2;

%   max iteration number = 3
iter_n = 3;

% ea = 0.0001
es = 0.0001;

%% Bisection Method

figure(f1);

[root,ea,iter] = bisect(f, x_l, x_u, es, iter_n);

% draw graph
x = -50:0.1:50;
plot(x, log(x.^4) - 0.7);
hold on

% draw root line
y = zeros(1, length(x));
plot(x, y);

% draw bisection method root
plot(root, f(root), 'ob');

% draw initial x
plot([x_l, x_u], [f(x_l), f(x_u)], 'or');

title("Bisection Method / max iteration = 3");
legend("function : ln(x^4) - 0.7", "root line", "bisection output : iter = 3", "initial bracket [0.5 2]");
xlabel("x, xl = 0.5 and xu = 2");
ylabel("y");
grid on

hold off

% Analytic Solution using fzero() function
%xx = fzero(@(x) log(x^4) - 0.7, 2);
%plot(xx, f(xx), 'or');

% draw ea
figure(f2);
xxx = 1:length(ea);
plot(xxx, ea, 'or');
hold on
plot(xxx, ea);
xlim([0 10]);
ylim([0 max(ea)]);
title("Error about Bisection Method");
legend("error");
xlabel("iterations");
ylabel("error : abs((xr - xrold)/xr) * 100");
grid on

hold off