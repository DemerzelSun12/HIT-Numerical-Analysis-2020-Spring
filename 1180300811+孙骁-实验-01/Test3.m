% xΪ��ֵ��
% xiΪ�������
function Test3(x, xi)
y = sqrt(x);
yi = Lagrange(x, y, xi);
yFact = sqrt(xi);
err = yFact - yi;
fprintf('�����ֵ��xi:\n');
disp(xi);
fprintf('����ò�ֵyi:\n');
disp(yi);
fprintf('��ֵ�㴦����ֵyFact:\n');
disp(yFact);
fprintf('�������err:\n');
disp(err);
plot(x, y, '-b', xi, yi, '-r', xi, yi, 'og');