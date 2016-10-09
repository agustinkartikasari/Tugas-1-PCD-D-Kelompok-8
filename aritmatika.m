clear all;
close all;
clc

%memanggil image
image = imread('foto.jpg');

%mendapatkan komponen RGB
R = image (:,:,1); %mendapatkan komponen R
G = image (:,:,2); %mendapatkan komponen G
B = image (:,:,3); %mendapatkan komponen B

%konversi citra berwarna ke citra keabuan
gray = 0.3*R + 0.6*G + 0.1*B;
%imshow(gray);

disp('');
disp('***** Operasi Aritmatika Citra Keabuan *****');

%input nilai x
x = input('masukan nilai x : ');

disp('');
disp('==Pilih Operasi Aritmatika==');
disp('1. Penjumlahan');
disp('2. Pengurangan');
disp('3. Perkalian');
disp('4. Pembagian');
disp('');
operasi = input('Pilih operasi aritmatika(1-4): ');

%operasi aritmatika
switch operasi
    case 1
        a = gray + x ;  %opersi penjumlahan
    case 2
        a = gray - x ;  %operasi pengurangan
    case 3
        a = gray * x ;  %operasi perkalian
    case 4
        a = gray / x ;  %operasi pembagian
end

disp('');
disp('**************** Kelompok 8 ****************');

%menampilkan citra keabuan
subplot(2,2,1);imshow(gray);title('Citra Keabuan');
%menampilkan histogram citra keabuan
subplot(2,2,2);imhist(gray);title('Histogram Citra Keabuan');
%menampilkan citra hasil operasi aritmatika
subplot(2,2,3);imshow(a);title('Citra Hasil Operasi Aritmatika');
%menampilkan histogram citra hasil operasi aritmatika
subplot(2,2,4);imhist(a);title('Histogram Citra Hasil Operasi Aritmatika');
