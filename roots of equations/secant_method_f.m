function [root, iter] = secant_method_f(func, x1, x2, maxit)

iter = 0;

x = zeros(1, maxit+2);
x(1) = x1;
x(2) = x2;

while (1)
    x(iter+3) = x(iter+2) - func(x(iter+2))...
        * (x(iter+1) - x(iter+2)) / (func(x(iter+1)) - func(x(iter+2)));
    
    iter = iter+1;
    
    if iter >= maxit
        break
    end
end

root = x;

end