clc, clear;
A=input('A=');
B=input('B=');
X=input('X=');
er=1;
e=1e-8;
k=1;
while (er>e)
    for i=1:length(A)
        sigma=0;
        X_temp=X(i);
        for j=1:length(A)
            if i~=j
                sigma=sigma+A(i,j)*X(j);
            end
        end
        X(i)=(B(i)-sigma)/A(i,i);
        error(i)=abs(X(i)-X_temp);
    end
    k=k+1;
    er=max(error);
end
fprintf('\nSolusi:\n');
for i=1:length(A)
    fprintf('x%i = %.2f\n',i,X(i));
end
fprintf('Iterasi: %i\n',k);
