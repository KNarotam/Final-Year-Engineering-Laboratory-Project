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
