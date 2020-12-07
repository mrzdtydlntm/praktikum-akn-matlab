clear;
clc;

fprintf('Pilih soal\n');
fprintf('1: (sin(3-2*x))^4\n');
fprintf('2: ((sin(3*x))/(x*cos(2*x)))\n');
no=input('Soal no berapa yang ingin dikerjakan?\n');
switch no
    case 1
        clear;
        clc;
        fprintf('Diferensiasi Numerik (sin(3-2*x))^4\n');
        fprintf('======================================\n');
        f=@(x) ((sin(3-2*x))^4);
        an=@(x) (-8*((sin(3-2*x))^3)*cos(3-2*x));
        a=input('Masukkan x: ');
        N=input('Masukkan banyaknya h: ');
        for i=1:N
            fprintf('Masukkan h(%d): ',i);
            h(i)=input(' ');
        end

        fprintf('Besar analitiknya : %d\n',an(a));

        %FDM
        fprintf('=====FDM=====\n');
        for i=1:N
            fdm(i)=(f(a+h(i))-f(a))/h(i);
            ef(i)=abs(fdm(i)-an(a));
            fprintf('f(%d)=%.2f\t error=%.5f',i,fdm(i),ef(i));
            fprintf('\n');
        end

        %BDM
        fprintf('=====BDM=====\n');
        for i=1:N
            bdm(i)=(f(a)-f(a-h(i)))/h(i);
            eb(i)=abs(bdm(i)-an(a));
            fprintf('f(%d)=%.2f\t error=%.5f',i,bdm(i),eb(i));
            fprintf('\n');
        end

        %CDM
        fprintf('=====CDM=====\n');
        for i=1:N
            cdm(i)=(f(a+h(i))-f(a-h(i)))/(2*h(i));
            ec(i)=abs(cdm(i)-an(a));
            fprintf('f(%d)=%.2f\t error=%.5f',i,cdm(i),ec(i));
            fprintf('\n');
        end

    case 2
        clear;
        clc;
        fprintf('Diferensiasi Numerik (sin(3*x))/(x*cos(2*x))\n');
        fprintf('============================================\n');
        f=@(x) ((sin(3*x))/(x*cos(2*x)));
        an=@(x) (sec(2*x)*3*x*cos(3*x)+(sin(3*x)*2*x*tan(2*x)-1));
        a=input('Masukkan x: ');
        N=input('Masukkan banyaknya h: ');
        for i=1:N
            fprintf('Masukkan h(%d): ',i);
            h(i)=input(' ');
        end
        fprintf('Besar analitiknya : %d\n',an(a));
        %FDM
        fprintf('=====FDM=====\n');
        for i=1:N
            fdm(i)=(f(a+h(i))-f(a))/h(i);
            ef(i)=abs(fdm(i)-an(a));
            fprintf('f(%d)=%.2f\t error=%.5f',i,fdm(i),ef(i));
            fprintf('\n');
        end

        %BDM
        fprintf('=====BDM=====\n');
        for i=1:N
            bdm(i)=(f(a)-f(a-h(i)))/h(i);
            eb(i)=abs(bdm(i)-an(a));
            fprintf('f(%d)=%.2f\t error=%.5f',i,bdm(i),eb(i));
            fprintf('\n');
        end

        %CDM
        fprintf('=====CDM=====\n');
        for i=1:N
            cdm(i)=(f(a+h(i))-f(a-h(i)))/(2*h(i));
            ec(i)=abs(cdm(i)-an(a));
            fprintf('f(%d)=%.2f\t error=%.5f',i,cdm(i),ec(i));
            fprintf('\n');
        end
end
