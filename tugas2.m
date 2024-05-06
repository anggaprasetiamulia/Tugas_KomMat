%Nama : Angga Prasetia Mulia
%NIM  : 662021010
%Tugas
    %Carilah sebanyak mungkin fungsi 2D dan 3D 
    %dan gunakan informasi yang telah dipelajari dikelas 
    %mengenai cara visualisasi fungsi menggunakan Matlab 
    %atau boleh menambahkan perintah yang belum diajarkan dikelas.

% %Gambar 2D (Gelas)
% function createGlassShape()
%     % Membuat bentuk gelas menggunakan plot
%     
%     % Definisikan koordinat untuk bagian atas gelas
%     r_top = 1; % Jari-jari atas gelas
%     theta_top = linspace(0, 2*pi, 100); % Sudut untuk membuat lingkaran
%     x_top = r_top * cos(theta_top);
%     y_top = r_top * sin(theta_top);
%     
%     % Definisikan koordinat untuk bagian bawah gelas
%     r_bottom = 0.5; % Jari-jari bawah gelas
%     theta_bottom = linspace(0, 2*pi, 100); % Sudut untuk membuat lingkaran
%     x_bottom = r_bottom * cos(theta_bottom);
%     y_bottom = r_bottom * sin(theta_bottom) - 1.5;
%     
%     % Plot garis atas gelas
%     plot(x_top, y_top, 'k', 'LineWidth', 2);
%     hold on;
%     
%     % Plot garis bawah gelas
%     plot(x_bottom, y_bottom, 'k', 'LineWidth', 2);
%     
%     % Plot sisi gelas
%     plot([-r_top, -r_bottom], [0, -1.5], 'k', 'LineWidth', 2);
%     plot([r_top, r_bottom], [0, -1.5], 'k', 'LineWidth', 2);
%     
%     % Atur aspek rasio sumbu
%     axis equal;
%     
%     % Atur batasan sumbu
%     xlim([-1.5, 1.5]);
%     ylim([-1.5, 1]);
%     
%     % Tambahkan judul dan label sumbu
%     title('Bentuk Gelas');
%     xlabel('X');
%     ylabel('Y');
% end

% %Gambar 2D (Monitor detak jantung rumah sakit)
% function create_dense_2d_ecg_monitor_image()
%     % Membuat data untuk gambar monitor detak jantung
%     t = linspace(0, 2*pi, 1000);
%     ecg_signal1 = sin(2*t) + 0.5*sin(3*t) + 0.2*sin(5*t); % Sinyal EKG yang disimulasikan
%     ecg_signal2 = 0.8*sin(2*t - pi/4) + 0.3*sin(4*t + pi/3) + 0.1*sin(6*t - pi/2); % Sinyal EKG tambahan
% 
%     % Membuat plot 2D
%     figure;
%     hold on;
%     plot(ecg_signal1, 'r', 'LineWidth', 1.5); % Plot sinyal EKG pertama
%     plot(ecg_signal2, 'b', 'LineWidth', 1.5); % Plot sinyal EKG kedua
%     baseline = zeros(size(t));
%     plot(baseline, 'k--', 'LineWidth', 1); % Plot garis dasar
%     xlabel('Waktu');
%     ylabel('Amplitudo');
%     title('Monitor Detak Jantung 2D');
%     grid on; % Menampilkan grid
%     axis tight; % Menyesuaikan sumbu agar sesuai dengan data
%     ylim([-3, 3]); % Menyesuaikan batas sumbu y
%     legend('Sinyal EKG 1', 'Sinyal EKG 2', 'Garis Dasar');
%     
%     % Menyimpan gambar sebagai file PNG
%     saveas(gcf, 'dense_2d_ecg_monitor_image.png');
% end

% %Gambar 2D (segitiga)
% function create_triangle_plot()
%     % Menentukan titik-titik segitiga
%     points = [0, 0; 1, 0; 0.5, sqrt(3)/2; 0, 0]; % Titik-titik segitiga (sudut-sudut)
% 
%     % Membuat plot 2D
%     figure;
%     plot(points(:, 1), points(:, 2), 'b', 'LineWidth', 2); % Plot segitiga
%     xlabel('X');
%     ylabel('Y');
%     title('Plot 2D Segitiga');
%     axis equal; % Memastikan skala sumbu sama
% 
%     % Menyimpan gambar sebagai file PNG
%     saveas(gcf, 'triangle_plot.png');
% end



% %Gambar 2D (Track Saham)
% x = -pi:pi/10:pi;
% y = tan(sin(x)) - sin(tan(x));
% 
% figure
% plot(x,y,'--gs',...
%     'LineWidth',2,...
%     'MarkerSize',10,...
%     'MarkerEdgeColor','b',...
%     'MarkerFaceColor',[0.5,0.5,0.5])

% %Gambar 2D (Barcode)
% function create_barcode_like_image()
%     % Mengatur panjang barcode
%     barcode_length = 50;
%     
%     % Membuat data untuk gambar barcode
%     barcode_data = randi([0, 1], 1, barcode_length);
% 
%     % Membuat plot 2D barcode
%     figure;
%     bar(barcode_data, 'k');
%     xlabel('Bit');
%     ylabel('Intensity');
%     title('Barcode-like Image');
%     ylim([0, 1.5]);
%     xlim([0.5, barcode_length + 0.5]);
%     axis off; % Menghilangkan sumbu
%     set(gca, 'Color', [0.9 0.9 0.9]); % Memberi warna latar belakang plot

% %Gambar 2D 
% x = 0:pi/10:2*pi;
% y1 = sin(x);
% y2 = sin(x-0.25);
% y3 = sin(x-0.5);
% 
% figure
% plot(x,y1,'g',x,y2,'b--o',x,y3,'c*')

% % Gambar 2D Hati
% function create_2d_heart_image()
%     % Membuat data untuk gambar hati
%     t = linspace(0, 2*pi, 1000);
%     x = 16 * sin(t).^3;
%     y = 13 * cos(t) - 5 * cos(2*t) - 2 * cos(3*t) - cos(4*t);
% 
%     % Membuat plot 2D
%     figure;
%     plot(x, y, 'r', 'LineWidth', 2);
%     xlabel('X');
%     ylabel('Y');
%     title('Gambar Hati 2D');
%     axis equal;
% 
%     % Menyimpan gambar sebagai file PNG
%     saveas(gcf, '2d_heart_image.png');
% end


% %Gambar 2D (Rumah Angga)
% function createSimpleHouse()
%     % Membuat gambar rumah sederhana menggunakan plot
%     
%     % Plot atap rumah
%     plot([0, 5, 10, 0], [5, 10, 5, 5], 'k', 'LineWidth', 2);
%     hold on;
%     
%     % Plot dinding rumah
%     plot([0, 10, 10, 0, 0], [0, 0, 5, 5, 0], 'k', 'LineWidth', 2);
%     
%     % Plot pintu rumah
%     plot([4, 6, 6, 4, 4], [0, 0, 3, 3, 0], 'k', 'LineWidth', 2);
%     
%     % Plot jendela rumah
%     plot([2, 3, 3, 2, 2], [2, 2, 3, 3, 2], 'k', 'LineWidth', 2);
%     
%     % Atur aspek rasio sumbu
%     axis equal;
%     
%     % Atur batasan sumbu
%     xlim([-1, 11]);
%     ylim([-1, 11]);
%     
%     % Tambahkan judul dan label sumbu
%     title('Gambar Rumah Sederhana');
%     xlabel('X');
%     ylabel('Y');
% end

% %Gambar 2D (TV Angga)
% function createNiceTV()
%     % Membuat gambar televisi dengan bentuk yang lebih estetis menggunakan fungsi x dan y
%     
%     % Koordinat untuk layar TV
%     screen_x = [1, 7, 7, 1, 1];
%     screen_y = [1, 1, 5, 5, 1];
%     
%     % Koordinat untuk frame layar TV
%     frame_x = [0.8, 7.2, 7.2, 0.8, 0.8];
%     frame_y = [0.8, 0.8, 5.2, 5.2, 0.8];
%     
%     % Koordinat untuk kaki TV
%     leg_x = [2, 2, 6, 6, 2];
%     leg_y = [0, 1, 1, 0, 0];
%     
%     % Koordinat untuk tombol TV
%     button1_x = [2.5, 3, 3, 2.5, 2.5];
%     button1_y = [1.5, 1.5, 1.8, 1.8, 1.5];
%     button2_x = [3.5, 4, 4, 3.5, 3.5];
%     button2_y = [1.5, 1.5, 1.8, 1.8, 1.5];
%     
%     % Gambar frame layar TV
%     plot(frame_x, frame_y, 'k', 'LineWidth', 2);
%     hold on;
%     
%     % Gambar layar TV
%     plot(screen_x, screen_y, 'k', 'LineWidth', 2);
%     
%     % Gambar kaki TV
%     plot(leg_x, leg_y, 'k', 'LineWidth', 2);
%     
%     % Gambar tombol TV
%     plot(button1_x, button1_y, 'k', 'LineWidth', 2);
%     plot(button2_x, button2_y, 'k', 'LineWidth', 2);
%     
%     % Atur batasan sumbu
%     xlim([0, 8]);
%     ylim([0, 6]);
%     
%     % Tambahkan judul dan label sumbu
%     title('Gambar Televisi');
%     xlabel('X');
%     ylabel('Y');
% end

% %Gambar 2D (lingkaran)
% function create_circle_plot()
%     % Mengatur parameter lingkaran
%     radius = 5;
%     center = [0, 0];
%     theta = linspace(0, 2*pi, 1000);
%     x = radius * cos(theta) + center(1);
%     y = radius * sin(theta) + center(2);
% 
%     % Membuat plot 2D
%     figure;
%     plot(x, y, 'b', 'LineWidth', 2); % Plot lingkaran
%     xlabel('X');
%     ylabel('Y');
%     title('Plot 2D Lingkaran');
%     axis equal; % Memastikan skala sumbu sama

% %Gambar 2D (hati)
% function create_heart_plot()
%     % Menentukan titik-titik bentuk hati
%     t = linspace(0, 2*pi, 1000);
%     x = 16 * sin(t).^3;
%     y = 13 * cos(t) - 5 * cos(2*t) - 2 * cos(3*t) - cos(4*t);
% 
%     % Membuat plot 2D
%     figure;
%     plot(x, y, 'r', 'LineWidth', 2); % Plot bentuk hati
%     xlabel('X');
%     ylabel('Y');
%     title('Plot 2D Bentuk Hati');
%     axis equal; % Memastikan skala sumbu sama

% % Gambar 2D buku tulis 
% function createNotebookImage()
%     % Ukuran halaman buku tulis
%     width = 10; % Lebar dalam satuan inci
%     height = 8; % Tinggi dalam satuan inci
%     
%     % Jumlah garis horizontal dan vertikal
%     num_horizontal_lines = 20;
%     num_vertical_lines = 25;
%     
%     % Membuat gambar
%     fig = figure;
%     ax = axes('Parent', fig);
%     hold(ax, 'on');
%     
%     % Menggambar garis horizontal
%     y = linspace(0, height, num_horizontal_lines);
%     for i = 1:num_horizontal_lines
%         plot(ax, [0, width], [y(i), y(i)], 'k', 'LineWidth', 0.5);
%     end
%     
%     % Menggambar garis vertikal
%     x = linspace(0, width, num_vertical_lines);
%     for i = 1:num_vertical_lines
%         plot(ax, [x(i), x(i)], [0, height], 'k', 'LineWidth', 0.5);
%     end
%     
%     % Mengatur properti sumbu
%     ax.Visible = 'off'; % Menyembunyikan sumbu
%     ax.Position = [0, 0, 1, 1]; % Memastikan sumbu menempati seluruh gambar
%     
%     % Menyimpan gambar sebagai file PNG
%     exportgraphics(fig, 'notebook.png', 'Resolution', 300);
% end


% %Gambar 3D (Bunga Bangkai Angga)
% function plot3DSinusFunction()
%     x = -10:0.1:10;
%     y = -10:0.1:10;
%     [X, Y] = meshgrid(x, y);
%     Z = sin(sqrt(X.^2 + Y.^2));
% 
%     % Plot 3D
%     surf(X, Y, Z);
%     xlabel('x');
%     ylabel('y');
%     zlabel('z');
%     title('Plot 3D dari Fungsi Sinus 3D');
% end

% %Gambar 3D (Wadah Tumpeng terbalik Angga)
% function plotConeFunction()
%     x = -10:0.1:10;
%     y = -10:0.1:10;
%     [X, Y] = meshgrid(x, y);
%     Z = sqrt(X.^2 + Y.^2);
% 
%     % Plot 3D
%     surf(X, Y, Z);
%     xlabel('x');
%     ylabel('y');
%     zlabel('z');
%     title('Plot 3D dari Fungsi Cone');
% end

% %Gambar 3D (Pucuk Prosotan)
% function plotRosenbrockFunction()
%     x = linspace(-2, 2, 100);
%     y = linspace(-2, 2, 100);
%     [X, Y] = meshgrid(x, y);
%     Z = (1-X).^2 + 100*(Y-X.^2).^2;
% 
%     % Plot 3D
%     surf(X, Y, Z, 'EdgeColor', 'none', 'FaceColor', 'interp');
%     colormap(summer); % Mengatur colormap menjadi summer
%     colorbar; % Menambahkan colorbar
%     xlabel('x');
%     ylabel('y');
%     zlabel('z');
%     title('Plot 3D dari Fungsi Rosenbrock');
%     view(30, 30); % Mengatur sudut pandang
%     lighting gouraud; % Menggunakan pencahayaan gouraud
%     shading interp; % Menambahkan shading yang lebih halus
% end

% % Gambar 3D ombak di laut
% function plotGriewankFunction()
%     % Generate data
%     x = linspace(-5, 5, 200);
%     y = linspace(-5, 5, 200);
%     [X, Y] = meshgrid(x, y);
%     term1 = (X.^2 + Y.^2) / 4000;
%     term2 = cos(X) .* cos(Y / sqrt(2));
%     Z = term1 - term2 + 1;
% 
%     % Plot 3D
%     fig = figure;
%     ax = axes('Parent', fig);
%     surf(ax, X, Y, Z, 'EdgeColor', 'none');
%     ax.Box = 'on'; % Show box around plot
%     xlabel(ax, 'x');
%     ylabel(ax, 'y');
%     zlabel(ax, 'z');
%     title(ax, 'Plot 3D dari Fungsi Griewank');
%     
%     % Set colormap and lighting
%     colormap(ax, 'jet');
%     colorbar(ax); % Show colorbar
%     
%     % Adjust viewpoint and lighting
%     view(ax, [30, 30]); % Set viewpoint
%     light(ax, 'Position', [0, 0, 1]); % Set light position
%     ax.LightStyle = 'local'; % Set light style
%     ax.AmbientLightColor = [0.5, 0.5, 0.5]; % Set ambient light color
%     ax.DiffuseStrength = 0.8; % Set diffuse strength
%     ax.SpecularStrength = 0.9; % Set specular strength
%     ax.SpecularExponent = 25; % Set specular exponent
% end

% % Gambar 3D ..
% function plotAckleyFunction()
%     % Generate data
%     x = linspace(-5, 5, 200);
%     y = linspace(-5, 5, 200);
%     [X, Y] = meshgrid(x, y);
%     term1 = -20 * exp(-0.2 * sqrt(0.5 * (X.^2 + Y.^2)));
%     term2 = - exp(0.5 * (cos(2*pi*X) + cos(2*pi*Y)));
%     Z = term1 + term2 + 20 + exp(1);
% 
%     % Plot 3D
%     fig = figure;
%     ax = axes('Parent', fig);
%     surf(ax, X, Y, Z, 'EdgeColor', 'none');
%     ax.Box = 'on'; % Show box around plot
%     xlabel(ax, 'x');
%     ylabel(ax, 'y');
%     zlabel(ax, 'z');
%     title(ax, 'Plot 3D dari Fungsi Ackley');
%     
%     % Set colormap and lighting
%     colormap(ax, 'jet');
%     colorbar(ax); % Show colorbar
%     
%     % Adjust viewpoint and lighting
%     view(ax, [45, 45]); % Set viewpoint
%     light(ax, 'Position', [0, 0, 1]); % Set light position
%     ax.LightStyle = 'local'; % Set light style
%     ax.AmbientLightColor = [0.5, 0.5, 0.5]; % Set ambient light color
%     ax.DiffuseStrength = 0.8; % Set diffuse strength
%     ax.SpecularStrength = 0.9; % Set specular strength
%     ax.SpecularExponent = 25; % Set specular exponent
% end
% 


% function plotRastriginFunction()
%     % Generate data
%     x = linspace(-5.12, 5.12, 200);
%     y = linspace(-5.12, 5.12, 200);
%     [X, Y] = meshgrid(x, y);
%     A = 10;
%     Z = A * 2 + (X.^2 - A * cos(2 * pi * X)) + (Y.^2 - A * cos(2 * pi * Y));
% 
%     % Plot 3D
%     fig = figure;
%     ax = axes('Parent', fig);
%     surf(ax, X, Y, Z, 'EdgeColor', 'none');
%     ax.Box = 'on'; % Show box around plot
%     xlabel(ax, 'x');
%     ylabel(ax, 'y');
%     zlabel(ax, 'z');
%     title(ax, 'Plot 3D dari Fungsi Rastrigin');
%     
%     % Set colormap and lighting
%     colormap(ax, 'jet');
%     colorbar(ax); % Show colorbar
%     
%     % Adjust viewpoint and lighting
%     view(ax, [30, 30]); % Set viewpoint
%     light(ax, 'Position', [0, 0, 1]); % Set light position
%     ax.LightStyle = 'local'; % Set light style
%     ax.AmbientLightColor = [0.5, 0.5, 0.5]; % Set ambient light color
%     ax.DiffuseStrength = 0.8; % Set diffuse strength
%     ax.SpecularStrength = 0.9; % Set specular strength
%     ax.SpecularExponent = 25; % Set specular exponent
% end

% % Gambar 3D Mahkota
% function create_hat_image()
%     % Membuat data untuk gambar topi
%     [X, Y] = meshgrid(linspace(-1, 1, 100), linspace(-1, 1, 100));
%     Z_cone = sqrt(X.^2 + Y.^2); % Permukaan kerucut atas
%     Z_brin = 0.8 - 0.5 * (X.^2 + Y.^2); % Permukaan brim (pinggiran)
% 
%     % Membuat plot 3D
%     figure;
%     hold on;
%     surf(X, Y, Z_cone, 'FaceColor', 'red', 'EdgeColor', 'none'); % Plot kerucut
%     surf(X, Y, Z_brin, 'FaceColor', 'blue', 'EdgeColor', 'none'); % Plot brim
%     xlabel('X');
%     ylabel('Y');
%     zlabel('Z');
%     title('Mahkota');
%     view(3); % Menampilkan dari semua sudut
%     axis equal; % Memastikan skala sumbu sama
% 
%     % Menyimpan gambar sebagai file PNG
%     saveas(gcf, 'hat_image.png');
% end

% % Gambar 3D Kubus
% function create_cube_image()
%     % Membuat koordinat titik-titik kubus
%     vertices = [
%         0 0 0; % titik 1
%         1 0 0; % titik 2
%         1 1 0; % titik 3
%         0 1 0; % titik 4
%         0 0 1; % titik 5
%         1 0 1; % titik 6
%         1 1 1; % titik 7
%         0 1 1  % titik 8
%     ];
% 
%     % Membuat sisi-sisi kubus
%     faces = [
%         1 2 3 4; % sisi depan
%         2 6 7 3; % sisi kanan
%         6 5 8 7; % sisi belakang
%         5 1 4 8; % sisi kiri
%         1 2 6 5; % sisi bawah
%         4 3 7 8  % sisi atas
%     ];
% 
%     % Membuat plot 3D
%     figure;
%     patch('Vertices',vertices,'Faces',faces,'FaceColor','blue');
%     xlabel('X');
%     ylabel('Y');
%     zlabel('Z');
%     title('Kubus 3D');
%     axis equal; % Memastikan skala sumbu sama
%     view(3); % Menampilkan dari semua sudut
% 
%     % Menyimpan gambar sebagai file PNG
%     saveas(gcf, 'cube_image.png');
% end

% % Gambar 3D Bola
% function create_Bola_image()
%     % Membuat data bola
%     [x, y, z] = sphere(100); % Membuat koordinat bola dengan 100 meridian dan paralel
%     r = 1; % Radius bola
% 
%     % Membuat plot 3D
%     figure;
%     surf(x*r, y*r, z*r, 'EdgeColor', 'none');
%     xlabel('X');
%     ylabel('Y');
%     zlabel('Z');
%     title('Bola 3D');
%     axis equal; % Memastikan skala sumbu sama
%     view(3); % Menampilkan dari semua sudut
% 
%     % Menyimpan gambar sebagai file PNG
%     saveas(gcf, 'sphere_image.png');
% end

% % Gambar 3D Elips
% function create_ellipsoid_image()
%     % Membuat data elipsoid
%     [x, y, z] = ellipsoid(0, 0, 0, 1, 2, 3, 100); % Ellipsoid dengan semi-sumbu a=1, b=2, c=3
% 
%     % Membuat plot 3D
%     figure;
%     surf(x, y, z, 'EdgeColor', 'none');
%     xlabel('X');
%     ylabel('Y');
%     zlabel('Z');
%     title('Elipsoid 3D');
%     axis equal; % Memastikan skala sumbu sama
%     view(3); % Menampilkan dari semua sudut
% 
%     % Menyimpan gambar sebagai file PNG
%     saveas(gcf, 'ellipsoid_image.png');
% end

% % Gambar 3D Donat
% function create_donat_image()
%     % Membuat data Donat
%     R = 3; % Jari-jari dari lingkaran besar
%     r = 1; % Jari-jari dari lingkaran kecil
%     [u, v] = meshgrid(linspace(0, 2*pi, 100), linspace(0, 2*pi, 100));
%     x = (R + r*cos(v)) .* cos(u);
%     y = (R + r*cos(v)) .* sin(u);
%     z = r*sin(v);
% 
%     % Membuat plot 3D
%     figure;
%     surf(x, y, z, 'EdgeColor', 'none');
%     xlabel('X');
%     ylabel('Y');
%     zlabel('Z');
%     title('Donat');
%     axis equal; % Memastikan skala sumbu sama
%     view(3); % Menampilkan dari semua sudut
% 
%     % Menyimpan gambar sebagai file PNG
%     saveas(gcf, 'torus_image.png');
% end

% % Gambar 3D Cincin
% function create_cincin_image()
%     % Membuat data silinder
%     [X,Y,Z] = cylinder(1, 100); % Membuat cincin dengan radius 1 dan 100 titik pada lingkarannya
% 
%     % Membuat plot 3D
%     figure;
%     surf(X, Y, Z, 'EdgeColor', 'none');
%     xlabel('X');
%     ylabel('Y');
%     zlabel('Z');
%     title('Cincin');
%     axis equal; % Memastikan skala sumbu sama
%     view(3); % Menampilkan dari semua sudut
% 
%     % Menyimpan gambar sebagai file PNG
%     saveas(gcf, 'cylinder_image.png');
% end

% % Gambar 3D Kerang
% function create_kerang_image()
%     % Membuat data untuk gambar kerang
%     theta = linspace(0, 2*pi, 100);
%     phi = linspace(-pi/2, pi/2, 100);
%     [Theta, Phi] = meshgrid(theta, phi);
%     r = 16 * (sin(Theta).^3);
%     x = r .* cos(Theta) .* cos(Phi);
%     y = r .* sin(Theta) .* cos(Phi);
%     z = r .* sin(Phi);
% 
%     % Membuat plot 3D
%     figure;
%     surf(x, y, z, 'EdgeColor', 'none');
%     xlabel('X');
%     ylabel('Y');
%     zlabel('Z');
%     title('Kerang');
%     axis equal;
%     view(3);

