%% Fixed Point Iteration

clc, clear;

%%  Initial Variable

fm = @(x) exp(-x);

%% main code : Fixed Point Iteration

[x, ea] = fixed_pt_sys(fm, 1, 10^(-3), 100);

xx = 1:length(ea);
plot(xx, ea, 'or');
hold on
plot(xx, ea);
title('Error about Fixed Point Iteration until less than 10^{-3}');
ylim([-5 max(ea)]);
xlabel('iteraion');
ylabel('error : abs((x_{new} - x_{old})/x_{new}) * 100');
legend('error about iteration');