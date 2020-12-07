clear, clc;
z=input('Titik yang diketahui : ');
x=z(:,1); y=z(:,2);
X=input('Titik yang dicari : ');
px=0;
for i=1:length(z)
	L(i)=1;
	for j=1:length(z)
		if i~=j
		L(i)=L(i)*(X-x(j))/(x(i)-x(j));
        end
    end
	px=px+y(i)*L(i);
end
fprintf("\nnilai pada %.0f = %f\n", X, px);

