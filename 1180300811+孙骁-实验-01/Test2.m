% funΪ���뺯��
% a,bΪ��������
% nΪ����ֶ���
% xiΪ�������ֵ��
function Test2(fun, a, b, n, xi)
x = zeros(1, n);
for k = 1:n
    x(k) = cos((2 * k - 1) * pi / (2 * n));
end
y = feval(fun, x);
yi = Lagrange(x, y, xi);
yFact = feval(fun, xi);
err = yFact - yi;
fprintf('����[%d,%d]��Ϊ%d��\n', a, b, n);
fprintf('�����ֵ��xi:\n');
disp(xi);
fprintf('����ò�ֵyi:\n');
disp(yi);
fprintf('��ֵ�㴦����ֵyFact:\n');
disp(yFact);
fprintf('�������err:\n');
disp(err);
plot(x, y, '-b', xi, yi, '-r', xi, yi, 'og');