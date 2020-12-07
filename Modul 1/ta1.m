%Tugas Akhir 1
clear; clc;
fprintf('Plihan bangun ruang: \n');
fprintf('1. Balok\t 2. Tabung\t 3. Kerucut\n');
no=input('Masukkan Pilihan: ');
switch no
    case 1
        p=input('Masukkan Panjang: ');
        l=input('Masukkan Lebar: ');
        t=input('Masukkan Tinggi: ');
        v=p*l*t;
        fprintf('\nVolume Balok : %.2f\n',v);
        a=2*((p*l)+(p*t)+(l*t));
        fprintf('Luas Balok : %.2f\n',a);
    case 2
        r=input('Masukkan Jari - jari: ');
        t=input('Masukkan Tinggi: ');
        v=(r^2)*pi*t;
        fprintf('\nVolume Tabung : %.2f\n',v);
        a=((2*r*pi)*t)+(2*(r^2)*pi);
        fprintf('Luas Tabung : %.2f\n',a);
    case 3
        r=input('Masukkan Jari - jari: ');
        t=input('Masukkan Tinggi: ');
        v=(r^2)*pi*t/3;
        fprintf('\nVolume Kerucut : %.2f\n',v);
        s=sqrt(r^2+t^2);
        a=(r^2)*pi+2*pi*r*s;
        fprintf('Luas Kerucut : %.2f\n',a);
    otherwise
        fprintf('Pilihan tidak tersedia\n');
end