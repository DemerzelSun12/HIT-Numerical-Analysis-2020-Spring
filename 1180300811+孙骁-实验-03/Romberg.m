function I = Romberg(fun, a, b, npanel, tol)
% RombergInterg  用Romberg方法求积分
%
% Synopsis:  I = Romberg(fun,a,b,n,tol)
%
% Input:     fun    = (string) 被积函数的函数名
%            a, b   = 积分下限和积分上限
%            npanel = (optional) 将积分区间平分的段数
%            tol    = (optional) 计算误差上限
%
% Output:    I = 通过Romberg方法求积分的近似值
T(1,1) = Trapezoid(fun, a, b, npanel);
err = 1;
m = 2; 
while err >= tol
   T(m,1) = Trapezoid(fun, a, b, 2^m*npanel);
   T(m,m) = 0;
   for n = 2:m
       T(m,n) = ( 4^(n-1)*T(m,n-1) - T(m-1,n-1)) / (4^(n-1) - 1); 
   end
   err = abs( T(m,m) - T(m-1,m-1) ); 
   m = m + 1; 
end
I = T(m-1,m-1);
end
