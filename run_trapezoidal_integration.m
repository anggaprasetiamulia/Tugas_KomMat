f = @(x) x.^4;
I = trapezoidal_integration(f, 0, 2, 10);
fprintf('Nilai integral = %f\n', I);
