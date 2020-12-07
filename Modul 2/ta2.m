%tugas akhir 2
clear all; clc;
N=input('N : ');
for i=1:N
    fprintf('angka[%i]',i);
    angka(i)=input(': ');
end
fprintf('\noutput bilangan yang habis dibagi 4= ');
for i=1:N
    if rem(angka(i),4)==0;
        fprintf('%.0f ', angka(i));
    end
end
fprintf('\noutput bilangan ganjil= ');
for i=1:N
    if rem(angka(i),2)~=0;
        fprintf('%.0f ', angka(i));
    end
end
fprintf('\noutput bilangan genap= ');
for i=1:N
    if rem(angka(i),2)==0;
        fprintf('%.0f ', angka(i));
    end
end
fprintf('\noutput bilangan prima= ');
for i=1:N
    s=angka(i)-1;
    if angka(i)>2
    c=0;
    for j=2:s
        if rem(angka(i),j)==0;
        c=c+1;
        end
    end
    if c==0
        fprintf('%.0f ', angka(i));
    end
    end
end
fprintf('\n');