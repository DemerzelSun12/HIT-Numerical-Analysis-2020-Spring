function P = Hermite(n)
syms x
if (n == 0)
    P = 1;
elseif (n == 1)
    P = 2 * x;
else
    P = (2 * x * Hermite(n - 1) - (n - 1) * 2 * Hermite(n - 2));
end
end