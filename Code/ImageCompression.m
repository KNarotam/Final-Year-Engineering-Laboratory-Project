%% Image Compression based on Non-Parametric Sampling in Noisy Environments
% Authors: 19G01: Kishan Narotam (717 931) & Nitesh Nana (720 064)

%% Clear workspace and command window

clear all
clc

%% Step 1: Loading an Image
% We  are going to load the image into MATLAB, asking for the name of the
% file. The user input is typed in and converted into a string. When the
% file is read into MATLAB, it's read in as a 3 dimensional matrix. We
% display the image for manual debugging.

userPrompt = 'What is the name of the file? ';
fileName = input(userPrompt, 's');
uploadedImage = imread(fileName);

% Display the uploaded image. The axis do not show, so we set the
% visibility to be on in order to see the pixels
subplot(1,2,1)
imshow(uploadedImage);
title(strcat('Original image: ', fileName));
axis = gca;
axis.Visible = 'On';

%% Step 2: Convert the image to grayscale
% Dealing with a 3 dimensional matrix is a challenge, as the third
% dimension is the colour map. So converting the image to grayscale will
% make the uploaded image into a 2 dimensional array.

imageToGray = rgb2gray(uploadedImage);

% Display the uploaded image into grayscale. Again, the axis does not show,
% so we set the visibility to be on.
subplot(1,2,2)
imshow(imageToGray);
title(strcat('Grayscale image: ', fileName));
axis = gca;
axis.Visible = 'On';

%% Step 3: Divide the image into the domain pool
% First we need to know the height and the width of the image. From this
% point, when "image" is used it refers to the converted grayscale image
% and NOT the original colour image. 

[heightOfImage, widthOfImage] = size(imageToGray);

% Time to determine the number of 8x8 squares in the domain pool
blocksAcross = widthOfImage/8;
blocksDown = heightOfImage/8;
totalNumberOfBlocks = blocksAcross * blocksDown;
fprintf('Total number of blocks in the domain pool: %d \n', totalNumberOfBlocks);

blocks = [imageToGray(1:8,1:8)]
