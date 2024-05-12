A = [3, -1, 1; 1, 4, 2; 2, -1, 5];
b = [1; 2; 3];
x0 = [0; 0; 0];
tol = 1e-6;
max_iter = 1000;
omega = 1.1; % Faktor relaksasi untuk SOR

% Metode Gauss-Seidel
x_gs = gauss_seidel(A, b, x0, tol, max_iter);

% Metode SOR
x_sor = sor(A, b, x0, omega, tol, max_iter);

disp('Solusi dengan metode Gauss-Seidel:');
disp(x_gs');

disp('Solusi dengan metode Successive Over Relaxation (SOR):');
disp(x_sor');
