clear
clc

sudut = [0:5:180];
y = cos(sudut*pi/180);
bar(sudut,y)
title('Grafik Cosinus');
xlabel('Sudut dalam derajat');
ylabel('Nilai cosinus');