function [root, iter] = modified_secant_method_f(func, x1, delta, maxit)

iter = 0;

x = zeros(1, maxit+2);
x(1) = x1;
x(2) = x1 * (1 + delta);

while (1)
    x(iter+3) = x(iter+2) - func(x(iter+2))...
        * x(iter+2) * delta / (func(x(iter+2) * (1 + delta)) - func(x(iter+2)));
    
    iter = iter+1;
    
    if iter >= maxit
        break
    end
end

root = x;

end