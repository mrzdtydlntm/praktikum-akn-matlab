function x=v(t)
g=9.8; m=68.1; c=12.5;
x=(g*m/c)*(1-exp(-c*t/m));
end