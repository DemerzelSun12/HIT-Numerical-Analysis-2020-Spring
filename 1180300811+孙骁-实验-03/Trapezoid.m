function  I = Trapezoid(fun, a, b, npanel)
% TrapezoidInteg  用复化梯形公式求积分
%
% Synopsis:  I = Trapezoid(fun,a,b,n)
%
% Input:     fun    = (string) 被积函数的函数名
%            a, b   = 积分下限和积分上限
%            npanel = (optional) 将积分区间平分的段数，默认为25
%
% Output:    I = 通过复化梯形公式求积分的近似值
if nargin < 4
    npanel = 25;
end
nnode = npanel + 1;
h = (b-a)/(nnode-1);
x = a:h:b;
f = feval(fun,x);
I = 0.5 * h * ( f(1) + 2 * sum(f(2:nnode-1)) + f(nnode) );