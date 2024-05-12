f = @(x) x.^3 - 3*x.^2 + 2*x - 1;
[df_forward, df_backward, df_central] = numerical_differentiation(f, 2, 0.1);
fprintf('Turunan menggunakan Beda Maju: %f\n', df_forward);
fprintf('Turunan menggunakan Beda Mundur: %f\n', df_backward);
fprintf('Turunan menggunakan Beda Tengah: %f\n', df_central);
