%Theodore Margoles, CSCI 4830, 3/20/2019

function binImage = getBinaryImage(dLR, dRL, T) %calc 
    s = size(dLR);
    rows = s(1);
    cols = s(2);
    binImage = zeros(s(1), s(2));
    for i=1:rows
        for j=1:cols
            val = abs(dLR(i, j) - dRL(i, j)); %outlier??? 
            if val <= T
                binImage(i, j) = 0; %0 means outlier
            else
                binImage(i, j) = 1; %1 means inlier. 
            end
        end
    end
    imshow(binImage);
end