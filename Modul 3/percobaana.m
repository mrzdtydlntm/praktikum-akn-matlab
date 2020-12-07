clear
clc

x=0:pi/100:2*pi;
y=sin(x);
y2=sin(x-.25);
y3=sin(x-.5);
plot(x,y,x,y2,x,y3)
legend('sin(x)','sin(x-.25)','sin(x-.5)')