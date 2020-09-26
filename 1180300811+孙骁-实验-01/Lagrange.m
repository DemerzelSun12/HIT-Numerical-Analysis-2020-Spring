% X代表样本值的横坐标向量
% Y代表对应样本值的函数值向量
% x代表待计算点的横坐标向量
% 输出y代表x对应的计算得出的插值
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