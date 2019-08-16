counter = 0;
counter1 = 0;
counter2 = 0;

for i = 1:length(encodedValues)
    
    for j = 1:length(encodedValues{i})
        tempBinary = dec2bin(encodedValues{i}(j));
        binary = length(tempBinary);
        counter1 = counter1 + binary;        
    end
    
    for k = 1:length(encodedCount{i})
        temp2Binary = dec2bin(encodedCount{i}(k));
        bin2 = length(temp2Binary);
        counter2 = counter2 + bin2;
    end
end

fprintf('Total number of bits Values: %d', counter1);

fprintf('\nTotal number of bits Count: %d', counter2);

x = heightOfImage * widthOfImage * 8;
fprintf('\nOriginal image number of bits: %d', x);

counter = counter1+counter2;

x/counter