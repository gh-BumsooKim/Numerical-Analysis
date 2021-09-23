clc, clear

f1 = figure;
figure(f1);

sum = 1;
apx(1) = sum;
err(1) = abs(cos(1.5) - apx(1));

for ii = 2:8
    sum = sum - (-1)^ii * ((1.5)^(2*(ii-1)))/factorial(2*(ii-1));
    apx(ii) = sum;
    err(ii) = abs(cos(1.5) - apx(ii));
end

plot(1:8, apx, 1:8, ones(1,8) * cos(1.5), 1:8, err);
title("Fourier Series Approximation");
xlim([1 8]);
legend("series approximation", "true value", "error");
xlabel("approximation terms x");
ylabel("approximation values y");
grid on