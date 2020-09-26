% X��������ֵ�ĺ���������
% Y�����Ӧ����ֵ�ĺ���ֵ����
% x����������ĺ���������
% ���y����x��Ӧ�ļ���ó��Ĳ�ֵ
function y = Lagrange(X, Y, x)
dataNumber = length(X);
sampleNumber = length(x);
for i = 1:sampleNumber
    z = x(i);
    s = 0.0;
    for k = 1:dataNumber
        p = 1.0;
        for j = 1:dataNumber
            if j~=k
                p = p * (z - X(j)) / (X(k) - X(j));
            end
        end
        s = p * Y(k) + s;
    end
    y(i) = s;
end