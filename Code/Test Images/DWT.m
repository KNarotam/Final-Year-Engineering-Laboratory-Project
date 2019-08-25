
% Discrete Wavelet Transform
clear all;
close all; 

% Read in an image file
fileName = uigetfile('*.*');
uploadedImage = imread(fileName);
image = uint8(double(uploadedImage));

% Original image
subplot(2,2,1)
imshow(image); 
title('Original Image')
axis = gca;
axis.Visible = 'On';
imwrite(image,'originalImage.tif');
imfinfo('originalImage.tif')

% A wavelet decomposition of the image
[C,S] = wavedec2(image,1,'haar');
[THR,NKEEP] = wdcbm2(C,S,1.5,prod(S(1,:)));

% Compression
[XC,CXC,LXC,PERF0,PERFL2] = wdencmp('lvd',C,S,'haar',1,THR,'h');
fprintf('Compression Ratio: ',PERF0);
disp(PERF0)

% Compressed image
subplot(2,2,2)
imshow(XC); 
title('Compressed Image')
axis = gca;

axis.Visible = 'On';
imwrite(XC,'compressedImage.tif');
imfinfo('compressedImage.tif')

% Decompression
X = waverec2(C,S,'haar');
decompressedImage = uint8(X);

% Decompressed image
subplot(2,2,3)
imshow(decompressedImage); 
title('Decompressed and Reconstructed Image');
axis = gca;
axis.Visible = 'On';
imwrite(decompressedImage,'decompressedImage.tif');
imfinfo('decompressedImage.tif')

A = imnoise(image,'salt & pepper', 0.01);
peaksnr = psnr(A,decompressedImage)

mse = immse(A,decompressedImage)