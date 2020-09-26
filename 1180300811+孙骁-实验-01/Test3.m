% x为插值点
% xi为待计算点
function Test3(x, xi)
y = sqrt(x);
yi = Lagrange(x, y, xi);
yFact = sqrt(xi);
err = yFact - yi;
fprintf('计算插值点xi:\n');
disp(xi);
fprintf('计算得插值yi:\n');
disp(yi);
fprintf('插值点处函数值yFact:\n');
disp(yFact);
fprintf('计算误差err:\n');
disp(err);
plot(x, y, '-b', xi, yi, '-r', xi, yi, 'og');