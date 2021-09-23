clc, clear

f1 = figure;
figure(f1);

k_f = @(A, E, R, T_a) A * exp(-E/(R*T_a));

% constant values
R = 8.314;      % J/(mol¡¤K)
E = 1 * 10^5;   % J/mol
A = 7 * 10^16;
T_a = 273:333;  % K

k = zeros(size(T_a));

for ii = 1:length(T_a)
    k(ii) = k_f(A, E, R, T_a(ii));
end

subplot(2,1,1);
plot(T_a, k);
grid on
title("Chemical Reactions (a)");
xlabel("Absolute temperature Ta (K)");
ylabel("Reaction Rate k (s^-1)");

subplot(2,1,2)
semilogy(1./T_a, log10(k));
title("Chemical Reactions (b)");
xlabel("Absolute temperature inverse 1/Ta (K)");
ylabel("Log Reaction Rate log10(k)");
grid on