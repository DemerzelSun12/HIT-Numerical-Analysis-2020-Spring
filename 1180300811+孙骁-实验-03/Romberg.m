function I = Romberg(fun, a, b, npanel, tol)
% RombergInterg  ��Romberg���������
%
% Synopsis:  I = Romberg(fun,a,b,n,tol)
%
% Input:     fun    = (string) ���������ĺ�����
%            a, b   = �������޺ͻ�������
%            npanel = (optional) ����������ƽ�ֵĶ���
%            tol    = (optional) �����������
%
% Output:    I = ͨ��Romberg��������ֵĽ���ֵ
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
