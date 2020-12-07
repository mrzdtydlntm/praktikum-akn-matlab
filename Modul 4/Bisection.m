clear
clc
% INI BISECTION
disp('x^2-3x-10=0');
a=input('Masukkan nilai a = ');
b=input('Masukkan nilai b = ');
fa=JAMUR(a);
fb=JAMUR(b);
if (fa*fb)>0
    disp('Tidak memenuhi syarat akar!');
end
TOL=0.00001;
maxi=100;
fprintf(' it a\t\t\tb\t\t\tc\t\t\terror\n');
for i=1:maxi
    fa=JAMUR(a);
    fb=JAMUR(b);
    c=(a+b)/2;
    fc=JAMUR(c);
    if (fa*fc>0)
        error=abs(a-b);
        fprintf('%3d\t%2.6f\t%2.6f\t%2.6f\t%2.6f\n', i, a, b, c, error);
        if (error<TOL)
            break
        end
        a=c;
    else
        error=abs(a-b);
        fprintf('%3d\t%2.6f\t%2.6f\t%2.6f\t%2.6f\n', i, a, b, c, error);
        if (error<TOL)
            break
        end
        b=c;
    end
%     pause(0.15);
end
fprintf('Terhenti pada iterasi ke %d\n', i);

function [f] = JAMUR(x)
    f=sin(x);
    return
end