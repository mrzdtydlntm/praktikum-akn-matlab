%e. Pernyataan continue 
clear all; clc;
N=20;  
for i=1:N     
    if (i<5)         
        continue;     
    end
    fprintf('%i. Saya mahasiswa Fisika \n',i);  
end
 