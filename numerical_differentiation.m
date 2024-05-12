function [df_forward, df_backward, df_central] = numerical_differentiation(f, x0, h)
%NUMERICAL_DIFFERENTIATION Diferensiasi numerik menggunakan metode beda maju, beda mundur, dan beda tengah
%   [df_forward, df_backward, df_central] = NUMERICAL_DIFFERENTIATION(f, x0, h) menghitung turunan numerik
%   dari fungsi f di titik x0 menggunakan metode beda maju, beda mundur,
%   dan beda tengah dengan ukuran langkah h.

% Periksa argumen masukan
if nargin ~= 3
    error('Input harus memiliki tiga argumen: fungsi handle, titik diferensiasi, dan ukuran langkah');
end

% Hitung turunan numerik menggunakan Beda Maju
df_forward = (f(x0 + h) - f(x0)) / h;

% Hitung turunan numerik menggunakan Beda Mundur
df_backward = (f(x0) - f(x0 - h)) / h;

% Hitung turunan numerik menggunakan Beda Tengah
df_central = (f(x0 + h) - f(x0 - h)) / (2*h);
end
