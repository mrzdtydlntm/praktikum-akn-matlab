%Tugas Akhir 2
clear
clc
fprintf('Mencari solusi dari persamaan kuadrat (ax^2 + bx + c)\n');
a=input('Nilai a: ');
b=input('Nilai b: ');
c=input('Nilai c: ');
d=(b^2)-(4*a*c);
if d==0
    x=(b)/(2*a);
    fprintf('Karena D=0 maka nilai akar: %.2f\n',x);
elseif d>0
    x1=(b-sqrt(d))/(2*a);
    x2=(b+sqrt(d))/(2*a);
    fprintf('Karena D>0 maka nilai akar: %.2f dan %.2f\n',x1,x2);
else
    x1=(b-sqrt(d))/(2*a);
    x2=(b+sqrt(d))/(2*a);
    fprintf('Karena D<0 maka nilai akar : \n');
    disp(x2);
    disp(x1);
    
end