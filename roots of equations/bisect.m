function [root, ea, iter] = bisect(func, xl, xu, es, maxit, varargin)

iter = 0;
xr = xl;

ea = zeros(1, length(maxit));

while (1)
    xrold = xr;
    xr = (xl + xu)/2;
    iter = iter + 1;
    
    if xr ~= 0
        ea(iter) = abs((xr - xrold)/xr) * 100;
    end
    
    test = func(xl, varargin{:})*func(xr, varargin{:}); 
    
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