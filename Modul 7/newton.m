clear, clc;
z=input('Titik yang diketahui : ');
x=z(:,1); f(1,:)=z(:,2);
X=input('Titik yang dicari : ');
px=f(1,1);
for a=1:length(z)-1
    for b=1:length(z)-a
    f(a+1,b)=(f(a,b+1)-f(a,b))/(x(b+a)-x(b));
    end
    k=1;
    for b=1:a
        k=k*(X-x(b));
    end
    px=px+k*f(a+1,1);
end
fprintf("\nnilai pada %.0f = %f\n", X, px);