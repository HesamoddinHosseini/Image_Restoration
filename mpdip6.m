close all;
clear;
%read images
fxy = imread('D:/Im401.jpg');
%fxy = rgb2gray(fxy);

gxy = imread('D:/Im402.jpg');
%gxy = rgb2gray(gxy);

[fxy_row_size, fxy_col_size] = size(fxy);

figure;
subplot(2,2,1);
imshow(fxy); 
title('fxy Image');
subplot(2,2,2);
imshow(gxy); 
title('gxy Image');

Fuv = fftshift(fft2(fxy));
Guv = fftshift(fft2(gxy));

Huv = Guv ./ Fuv;

subplot(2,2,3);
imshow(abs(log(1 + Huv)),[]); 
title('Huv Image');

Fhatuv = Guv ./ Huv;

fhatxy = ifft2(ifftshift(Fhatuv));

subplot(2,2,4);
imshow(fhatxy,[]); 
title('fhatxy Image');

%=========================================

clear;
%read images

gxy = imread('D:/Im402.jpg');
%gxy = rgb2gray(gxy);

zf = imread('D:/zf.jpg');
%gxy = rgb2gray(gxy);
zg = imread('D:/zg.jpg');
%gxy = rgb2gray(gxy);

[gxy_row_size, gxy_col_size] = size(gxy);

[zg_row_size, zg_col_size] = size(zg);

figure
subplot(1,2,1);
imshow(gxy); 
title('gxy Image');

Guv = fftshift(fft2(gxy));

zF = fftshift(fft2(zf));
zG = fftshift(fft2(zg));

zH = zG ./ zF;

zh = ifft2(ifftshift(zH));

Huv = zH;

Huv = imresize(Huv,[gxy_row_size, gxy_col_size]);

Fhatuv = Guv ./ Huv;

fhatxy = ifft2(ifftshift(Fhatuv));

subplot(1,2,2);
imshow(fhatxy,[]); 
title('fhatxy Image');

%=================================

clear;
%read images

gxy3 = imread('D:/Im403.jpg');
gxy4 = imread('D:/Im404.jpg');

gxy3 = im2double(gxy3);
gxy4 = im2double(gxy4);

[gxy_row_size, gxy_col_size] = size(gxy3);

figure
subplot(2,2,1);
imshow(gxy3); 
title('gxy3 Image');
subplot(2,2,2);
imshow(gxy4); 
title('gxy4 Image');

Guv3 = fft2(gxy3);
Guv4 = fft2(gxy4);

h3 = myfspecial(1.5);
hxy = zeros([gxy_row_size, gxy_col_size]);
[h_row, h_col]=size(h3);
hxy(1:h_row , 1:h_col) = h3(1:h_row , 1:h_col);
Huv3 = fft2(hxy);

h4 = myfspecial(2.5);
hxy = zeros([gxy_row_size, gxy_col_size]);
[h_row, h_col]=size(h4);
hxy(1:h_row , 1:h_col) = h4(1:h_row , 1:h_col);
Huv4 = fft2(hxy);

k =1;

Fhatuv3 = Guv3 .* Huv3;
fhatxy3 = ifft2(Fhatuv3);

Fhatuv4 = Guv4 .* Huv4;
fhatxy4 = ifft2(Fhatuv4);

subplot(2,2,3);
imshow(fhatxy3,[]); 
title('fhatxy Image');
subplot(2,2,4);
imshow(fhatxy4,[]); 
title('fhatxy Image');