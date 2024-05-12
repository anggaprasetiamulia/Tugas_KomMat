function I = trapezoidal_integration(f, a, b, n)
%Metrasi Integrasi Numerik menggunakan aturan trapesium
%   I = trapezoidal_integration(f, a, b, n) mengestimasi integral definit
%   dari fungsi f dari a hingga b menggunakan aturan trapesium dengan n
%   interval.

% Periksa argumen masukan
if nargin ~= 4
    error('Input harus memiliki empat argumen: fungsi handle, batas bawah, batas atas, dan jumlah interval');
end

% Hitung ukuran langkah
h = (b - a) / n;

% Inisialisasi jumlah
sum = 0;

% Hitung jumlah menggunakan Aturan Trapesium
for i = 1:n
    x = a + (i - 1) * h;
    if i == 1 || i == n
        sum = sum + f(x);
    else
        sum = sum + 2 * f(x);
    end
end

% Hitung integral
I = h / 2 * sum;
end
