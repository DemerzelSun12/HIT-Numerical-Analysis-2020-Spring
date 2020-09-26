function P = Laguerre(n)
syms x
if (n == 0)
    P = 1;
elseif (n == 1)
    P = 1-x;
else
    P = ((2 * n - 1 - x) * Laguerre(n - 1) - (n - 1)^2 * Laguerre(n - 2));
end
end