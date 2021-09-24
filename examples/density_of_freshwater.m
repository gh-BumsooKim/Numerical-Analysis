clc, clear

f1 = figure;
figure(f1);

rho_f = @(T_c) 5.5289 * 10^-8 * T_c^3 - 8.5016 * 10^-6 * T_c^2 + 6.5622 * 10^-5 * T_c + 0.99987;

T_f = 32:3.6:82.4;
T_c = 5/9 * (T_f - 32);
rho = zeros(size(T_c));

for ii = 1:length(T_c)
    rho(ii) = rho_f(T_c(ii));
end

plot(T_c, rho);
title("Density of Freshwater");
xlabel("Temperature variable Tc (¨¬C)");
ylabel("rho = density (g/cm^3)");
grid on