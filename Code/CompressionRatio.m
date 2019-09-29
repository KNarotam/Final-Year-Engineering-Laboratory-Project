%% Compression Ratio File that calculates the Compression Ratio, PSNR and MSE
% Authors: 19G01: Kishan Narotam (717 931) & Nitesh Nana (720 064)

totalBitsOfEncoding = 0;
binaryValuesCounter = 0;
binaryCountCounter = 0;

for i = 1:length(encodedValues)    
    for j = 1:length(encodedValues{i})
        tempBinary = dec2bin(encodedValues{i}(j));
        binary = length(tempBinary);
        binaryValuesCounter = binaryValuesCounter + binary;        
    end    
    for k = 1:length(encodedCount{i})
        temp2Binary = dec2bin(encodedCount{i}(k));
        binary2 = length(temp2Binary);
        binaryCountCounter = binaryCountCounter + binary2;
    end
end

fprintf('Total number of bits Values: %d', binaryValuesCounter);

fprintf('\nTotal number of bits Count: %d', binaryCountCounter);

totalBitsOfOriginal = heightOfImage * widthOfImage * 8;
fprintf('\nOriginal image number of bits: %d', totalBitsOfOriginal);

totalBitsOfEncoding = binaryValuesCounter+binaryCountCounter;

totalBitsOfOriginal/totalBitsOfEncoding

reconstructedImage = uint8(reconstructedImage);
ps= psnr(grayImage, reconstructedImage);
fprintf('\n The PSNR is: %d', ps);

mse = immse(grayImage, reconstructedImage);
fprintf('\n The MSE is: %d', mse);