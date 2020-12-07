%Input dan Output 
clear all; clc;
%rho=input('Masukkan nilai hambatan: ');
kalimat=input('Masukkan kata/kalimat: ','s');
a=input('Masukkan panjang sisi bujur sangkar: ');
luas=a*a;
disp('Luas persegi adalah: ');disp(luas);
disp(['Luas persegi adalah: ' num2str(luas)]);
fprintf('Luas bujur sangkar adalah: %.4f\n',luas);