function [res, listMatchingBlockCoords] = hasCommonFeatureBlock(image1, image2, tau, b)
    res = 0;
    S = size(image2);
    listMatchingBlockCoords = cell(100, 1);
    ccount = 1;
    fprintf("now when the image1 pops up, select a point which will be the upper left corner of the block feature you are choosing!\n");
    figure
    imshow(image1);
    [xi, yi] = getpts;
    point = cast([xi, yi], 'uint8');
    block1 = image1(point(1):point(1) + b, point(2):point(2) + b, :);
    for i = 1:S(1) - b 
        if res > 0
            break;
        end
        for j = 1:S(2) - b
            if sum(mod([i, j], 10)) == 0
               fprintf("at iteration (i, j) == (%d, %d)\n", i, j); 
            end
            block2 = image2(i:i+b, j:j+b, :);
            dif = abs(block1 - block2);
            sumDiff = sum(dif, 'all');
            if sumDiff < tau
                 res = res + 1;
                 fprintf("has matching feature!!!!\n");
                 listMatchingBlockCoords{ccount} = [i, j];
                 ccount = ccount + 1;
                 break;
            end
        end
    end
end

