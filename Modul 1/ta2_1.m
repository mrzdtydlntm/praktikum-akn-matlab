%Tugas Akhir 2
clear all; clc;
fprintf('Mencari solusi dari persamaan kuadrat (ax^2 + bx + c)\n');
a=input('Nilai a: ');
b=input('Nilai b: ');
c=input('Nilai c: ');
d=(b^2)-(4*a*c);
if d==0
    x=(b)/(2*a);
    fprintf('Nilai akar: %.2f\n',x);
elseif d>0
    x1=(b-sqrt(d))/(2*a);
    x2=(b+sqrt(d))/(2*a);
    fprintf('Nilai akar: %.2f dan %.2f\n',x1,x2);
else
    x1=(b-sqrt(d))/(2*a);
    x2=(b+sqrt(d))/(2*a);
    disp(['Nilai akar : ' num2str(x2),' dan ' num2str(x1)]);
end