clear;
A=input('A=');
B=input('B=');
Xo=input('X=');
er=1;
e=1e-8;
k=1;
while (er>e)
    for i=1:length(A)
        sigma=0;
        for j=1:length(A)
            if i~=j
                sigma=sigma+A(i,j)*Xo(j);
            end
        end
        Xn(i)=(B(i)-sigma)/A(i,i);
        error(i)=abs(Xn(i)-Xo(i));
    end
    Xo=[Xn];
    k=k+1;
    er=max(error);
end
fprintf('\nSolusi:\n');
for i=1:length(A)
    fprintf('x%i = %.2f\n',i,Xn(i));
end
fprintf('Iterasi: %i\n',k);
