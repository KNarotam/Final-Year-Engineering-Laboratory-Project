% Run the main program without DCT to get the blocks variable
clc
[row, col] = size(blocks{1})
test = zeros(row, col);
for k = 1:1
    fprintf('Working on row %d', k);
    A=blocks{1}(k, 1:8)
    
    % First we find difference between adjacent elements and its converted
    % to a logical format
    
    F=[logical(diff(A))]
    
    % Find the position of the elebments that has the values
    In=find(F~=0)
    
    Ele=A(In)
    
%     if (size(In) > 1 && In(1) == 0)
%         In(1) = 1
%     end
    C=[In(1) diff(In)];
    
    Result=zeros([numel(Ele) 2]);
    Result(:,1)=Ele;
    Result(:,2)=C;
    display(Result);
    
    % Decoding
    [r, c] = size(Result);
    
    count = 1;
    for i = 1:r
        value = Result(i, 1);
        for j = 1:Result(i, 2)
            test(k, count) = value;
            count = count + 1;
        end
    end
    
    display(test);
    
end