%a. Kondisional dengan (if … elseif … else … end) 
clear all; clc;
fprintf('Contoh 1: \n');
a=input('Masukkan bilangan a:  ');
if rem(a,2)==0
    disp('a adalah bilangan genap')
end
fprintf('\nContoh 2: \n');
n=input('Masukkan nilai n:  '); 
if n < 0     % jika n negatif     
    disp('Masukan harus bilangan positif');  
elseif rem(n,2) == 0    % jika n posisif dan bulat         
    A = n/2;      
    fprintf('A = %3.0f \n', A); 
else
    A = (n+1)/2; % jika n positif dan ganjil     
    fprintf('A = %3.0f \n', A); 
end