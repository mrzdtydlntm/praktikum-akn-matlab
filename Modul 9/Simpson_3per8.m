clear;
clc;

fprintf('Integrasi Metode Simpson 3/8\n');
fprintf('==========================\n');
N=input('Masukkan N: ');
x(1)=input('Masukkan x1: ');
x(N)=input('Masukkan xn: ');
h=(x(N)-x(1))/N;
sx=0;
[fx(1)]=f(x(1));
[fx(N)]=f(x(N));

for i=2:N-1
    x(i)=x(1)+(i*h);
    [fx(i)]=f(x(i));
    if mod(i,3)==0
        sx=sx+2*fx(i);
    else
        sx=sx+3*fx(i);
    end
end

I=(fx(1)+sx+fx(N))*3*h/8;
[inx(1)]=inn(x(1));
[inx(N)]=inn(x(N));
an=inx(N)-inx(1);
e=abs(I-an);
fprintf("Hasil numeriknya adalah= %.2f\n",I);
fprintf("Hasil analitiknya adalah= %.2f\n",an);
fprintf("Error = %.2f\n",e);

function [fx]=f(a)
fx=a*exp(2*a);
end

%function [fx]=f(a)
%fx=(log(a))/a;
%end

%function [fx]=f(a)
%fx=a/((a^2)-1)^2;
%end

function [in]=inn(x)
in=(x*exp(2*x))-exp(2*x);
end

%function [in]=inn(x)
%in=((log(x))^2)/2;
%end

%function [in]=inn(x)
%in=1/(2-2*(x^2))^2;
%end