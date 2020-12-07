clear all; clc;
A=[0 1;1 1];
b=[1;1];
for i=1:10
c=A*b;
d=max(c);
b=c./d;

end
disp(d)
disp(b)

