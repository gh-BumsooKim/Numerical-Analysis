function [root, ea, iter] = falsePos(func, xl, xu, es, maxit)

iter = 0;
xr = xl;

ea = zeros(1, length(maxit));

while (1)
    xrold = xr;
    
    iter = iter + 1;
    
    xr = xu - func(xu) * (xl - xu)/(func(xl) - func(xu));
    
    if xr ~= 0
        ea(iter) = abs((xr - xrold)/xr) * 100;
    end
    
    test = func(xr) * func(xl);
    
    if test < 0
        xu = xr;
    elseif test > 0
        xl = xr;
    else
        ea(iter) = 0;
    end
    
    if ea(iter) <= es || iter >= maxit
        break
    end
end

root = xr;

end