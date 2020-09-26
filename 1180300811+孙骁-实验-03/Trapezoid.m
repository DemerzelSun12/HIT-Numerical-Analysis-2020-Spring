function  I = Trapezoid(fun, a, b, npanel)
% TrapezoidInteg  �ø������ι�ʽ�����
%
% Synopsis:  I = Trapezoid(fun,a,b,n)
%
% Input:     fun    = (string) ���������ĺ�����
%            a, b   = �������޺ͻ�������
%            npanel = (optional) ����������ƽ�ֵĶ�����Ĭ��Ϊ25
%
% Output:    I = ͨ���������ι�ʽ����ֵĽ���ֵ
if nargin < 4
    npanel = 25;
end
nnode = npanel + 1;
h = (b-a)/(nnode-1);
x = a:h:b;
f = feval(fun,x);
I = 0.5 * h * ( f(1) + 2 * sum(f(2:nnode-1)) + f(nnode) );