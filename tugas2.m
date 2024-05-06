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

function plot3DSinusFunction()
    x = -10:0.1:10;
    y = -10:0.1:10;
    [X, Y] = meshgrid(x, y);
    Z = sin(sqrt(X.^2 + Y.^2));

    % Plot 3D
    surf(X, Y, Z);
    xlabel('x');
    ylabel('y');
    zlabel('z');
    title('Plot 3D dari Fungsi Sinus 3D');
end
