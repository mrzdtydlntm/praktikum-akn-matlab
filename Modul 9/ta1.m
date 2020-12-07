clear;
q=1:6;
N=[2.^q];
fprintf('N \t\t I\n');
for k=1:size(N,2)
    n=N(k); s=0;
    a=0; b=10;
    h=(b-a)/n; t=a:h:b; 
    for i=2:n-1
        s=s+2*v(t(i));
    end
    I=(v(t(1))+s+v(t(n)))*h/2;
    fprintf('%d \t %f\n',n,I);
end
