function x = gauss_seidel(A, b, x0, tol, max_iter)
    % Inisialisasi
    n = length(b);
    x = x0;
    iter = 0;
    error = tol + 1;
    
    % Iterasi Gauss-Seidel
    while error > tol && iter < max_iter
        x_old = x;
        for i = 1:n
            x(i) = (b(i) - A(i,1:i-1)*x(1:i-1) - A(i,i+1:n)*x_old(i+1:n)) / A(i,i);
        end
        error = norm(x - x_old, inf);
        iter = iter + 1;
    end
end
