clear
clc
N=input('input N : ');
for i=1:N
    fprintf('angka[%d]=',i);
    angka(i)=input(' ');
end
disp(['Nilai maksimum = ',num2str(max(angka))]);
disp(['Nilai minimum = ',num2str(min(angka))]);
disp(['Rata-rata = ',num2str(mean(angka))]);