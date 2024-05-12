f = @(x) 2*x.^2;
I = trapezoidal_integration(f, 0, 2, 10);
fprintf('Nilai integral = %f\n', I);
