clear;
% INI REPSON
x=input('Masukkan titik awal x - ');
TOL=eps;
maxstep=300;
disp('step     x1     x2     d');
for i=1:maxstep
    [fx,f1x] = JAMUR(x);
    x0=x;
    x=x-fx/f1x;
    fprintf(' %3d     %8.8f     %8.8f     %8.8f\n', i, x0, x, fx/f1x);
    if (abs(fx/f1x) < TOL)
        fprintf('Akar x = %g pada iterasi ke %d\n', x, i);
        break;
    end
    pause(0.15);
end
if (i>=maxstep)
    fprintf('gagal mencapai akar hingga iterasi ke-%g', i);
end

function [fx,f1x] = JAMUR(x)
fx=x^3-3*x-20;
f1x=3*x^2-3;
return
end