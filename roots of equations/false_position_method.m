%% Init

clc, clear;

f1 = figure; % false-position method root
f2 = figure; % false-position method error

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

%% False-Position Method

figure(f1);

[root, ea, iter] = falsePos(f, x_l, x_u, es, iter_n);

% draw graph
x = -50:0.1:50;
plot(x, log(x.^4) - 0.7);
hold on

% draw root line
y = zeros(1, length(x));
plot(x, y);

% draw false-position method root
plot(root, f(root), 'ob');

% draw initial x
plot([x_l, x_u], [f(x_l), f(x_u)], 'or');

title("False-Position Method / max iteration = 3");
legend("function : ln(x^4) - 0.7", "root line", "false-position output : iter = 3", "initial bracket [0.5 2]");
xlabel("x, xl = 0.5 and xu = 2");
ylabel("y");
grid on

% draw ea2
figure(f2);
xxx = 1:length(ea);
plot(xxx, ea, 'or');
hold on
plot(xxx, ea);
xlim([0 10]);
ylim([0 max(ea)]);
title("Error about False-Position Method");
legend("error");
xlabel("iterations");
ylabel("error : abs((xr - xrold)/xr) * 100");
grid on

hold off