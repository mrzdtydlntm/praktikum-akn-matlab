%d. Kondisional dengan (switch … case … otherwise … end) 
clear all; clc;
fprintf('Pilih salah satu program..\n');  
fprintf('a:  menghitung luas bujur sangkar: \n');  
fprintf('2:  menghitung luas persegi panjang: \n');  
fprintf('3:  menghitung luas persegi panjang: \n');  
fprintf('4:  menghitung luas persegi panjang: \n');  
no=input('Anda ingin menghitung luas 1,2,3 atau 4 \n');
switch no  
    case 1
        a=input('masukkan panjang sisi bujur sangkar:');     
        luas=a*a;      
        fprintf('Luas bujur sangkar adalah  %5.2f \n',luas);  
    case {2,3,4}
        a=input('masukkan panjang persegi panjang: '); 
        b=input('masukkan lebar persegi panjang: ');     
        luas=a*b;      
        fprintf('Luas persegi panjang adalah  %5.2f\n',luas);  
    otherwise
        fprintf('Ulangi pilihan yang ada...!!\n')
end 
 