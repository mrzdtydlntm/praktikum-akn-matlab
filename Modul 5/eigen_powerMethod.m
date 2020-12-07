clc
clc, clear, close all

% Matrix to be Checked
A = [3 -1 0; -2 4 -3; 0 -1 1];

% Initial Value
b = [1 1 1]';

tol = 1e-4; % toleransi

lambda(1) = 1;
dlambda = 1;
n = 1;
while (dlambda > tol)
  n = n + 1;  % Increment Data
  
  C = A*b;
  maxC = max(abs(C));
  
  lambda(n) = maxC;
  b = C/maxC;

  dlambda = abs(lambda(n)-lambda(n-1));  
end

% Hasil Power Method
lambda(end), b

% Perbandingan dengan Fungsi bawaan MATLAB
eig(A)
