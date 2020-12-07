%i. interaksi dengan Ms. Excel
clear all; clc;
d={'waktu','suhu';1 23;2 25;3 27};
xlswrite('contoh.xls',d);
A=xlsread('contoh.xls');
