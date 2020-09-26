function P = Chebyshev(n)
syms x
if (n == 0)
    P = 1;
elseif (n == 1)
    P = x;
else
    P = 2 * x * Chebyshev(n - 1) - Chebyshev(n - 2);
end
end