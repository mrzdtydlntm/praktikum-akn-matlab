clear;
clc;

nx=input('Masukkan banyaknya data x: ');
ny=input('Masukkan banyaknya data y: ');
n=nx;
if (nx~=ny)
  disp('Tidak bisa dioperasikan!');
  return;
else
    for jj=1:nx
        fprintf('Masukkan X%d: ',jj);
        x(jj)=input(' ');
    end
    for jj=1:nx
        fprintf('Masukkan Y%d: ',jj);
        y(jj)=input(' ');
    end
    disp('Ordo 1 = input 1, ordo 2 = input 2, dst');
    z=input('Masukkan ordo berapa yang diinginkan: ');
    if (z<1)
      disp('Error');
      return;
    end
    sigx(1:2*z+1)=0;
    sigy(1:2*z+1)=0;
    for i=1:2*z+1
      for jj=1:n
        sigx(i)=sigx(i)+x(jj)^(i-1);
        sigy(i)=sigy(i)+x(jj)^(i-1)*y(jj);
      end
    end
    matA(1:z+1,1:z+1)=0;
    matb(1:z+1)=0;
    for i=1:z+1
      k=i-1;
      for jj=1:z+1
        matA(i,jj)=sigx(jj+k);
      end
      matb(i)=sigy(i);
    end
    %Ini hasil
    a=matb*inv(matA);
    fprintf('Regresi ordo %d\nhasil koefisien/konstanta yang didapat:\n', z);
    disp(a);
end
