function result = Newton(fun, x0, ftol, dftol, maxit)
x = x0;
i = 0;
while i <= maxit
    i = i + 1;
    f = feval(fun,x);
    dfdx = diff(fun);
    df = feval(dfdx,x);
    if abs(df) < dftol
        result = [];
        warning('dfdx is too small!');
        return;
    end
    dx = f/df;
    x = x - dx;
    if abs(f) < ftol
        result = x;  
        return;  
    end
end
result = [];