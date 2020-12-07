%c. Perulangan dengan (while … end) 
clear all; clc;
%Program mencetak deret bilangan  
i=1;  
while(i<=6)  
    x=1;     
    while(x<=i)         
        fprintf('%i',x);         
        x=x+1;     
    end
    fprintf('\n');  
    i=i+1; 
end