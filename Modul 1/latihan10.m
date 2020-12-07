%h. Interaksi dengan File Teks 
clear all; clc;
disp('Program save file txt');
A=input('masukan nama depan: ','s');
B=input('masukan nama tengah: ','s');
C=input('masukan nama belakang: ','s');
save namadepan.txt A B C -ascii;
disp('Data telah disimpan');
