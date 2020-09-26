% fun为输入函数
% a,b为计算区间
% n为区间分段数
% xi为待计算插值点
function Test2(fun, a, b, n, xi)
x = zeros(1, n);
for k = 1:n
    x(k) = cos((2 * k - 1) * pi / (2 * n));
end
y = feval(fun, x);
yi = Lagrange(x, y, xi);
yFact = feval(fun, xi);
err = yFact - yi;
fprintf('区间[%d,%d]分为%d段\n', a, b, n);
fprintf('计算插值点xi:\n');
disp(xi);
fprintf('计算得插值yi:\n');
disp(yi);
fprintf('插值点处函数值yFact:\n');
disp(yFact);
fprintf('计算误差err:\n');
disp(err);
plot(x, y, '-b', xi, yi, '-r', xi, yi, 'og');