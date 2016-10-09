%memanggil image
image = imread('foto.jpg');

%mendapatkan komponen RGB
R = image (:,:,1); %mendapatkan komponen R
G = image (:,:,2); %mendapatkan komponen G
B = image (:,:,3); %mendapatkan komponen B

%konversi citra berwarna ke citra keabuan
gray = 0.3*R + 0.6*G + 0.1*B;

%menampilkan citra keabuan
imshow(gray);title('Citra Keabuan');

