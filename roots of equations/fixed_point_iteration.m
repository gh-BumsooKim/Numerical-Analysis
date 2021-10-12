%% Fixed Point Iteration

clc, clear;

f1 = figure;
f2 = figure;

%%  Initial Variable

fm = @(x) exp(-x);

%% main code : Fixed Point Iteration

figure(f1);

[x, ea] = fixed_pt_sys(fm, 1, 10^(-3), 100);

% draw graph
x_idx = 0:0.1:10;
plot(x_idx, exp(-x_idx));
title('Fixed Point Iteration Method');
xlabel('x');
ylabel('y');
xlim([0 10]);
ylim([0 10]);
hold on

% draw root line
plot([0 10], [0 10]);

% draw fixed point iteration method root
plot(x, fm(x), 'ob');
legend('g(x) = exp(-x)', 'f(x) = x', 'root of fixed point iteration');

% draw error
figure(f2);

xx = 1:length(ea);
plot(xx, ea, 'or');
hold on
plot(xx, ea);
title('Error about Fixed Point Iteration until less than 10^{-3}');
ylim([-5 max(ea)]);
xlabel('iteraion');
ylabel('error : abs((x_{new} - x_{old})/x_{new}) * 100');
legend('error about iteration');
