function hist3 = getColorBlockFeatures(block)
    hist3 = zeros(255, 255, 255);
    S = size(block);
    x = S(1);
    y = S(2);
    for i = 1:x
        for j = 1:y
            pij = block(i, j, :); %get pixel out
            pr = pij(1);
            pg = pij(2);
            pb = pij(3); %get red green blue values. 
            rbgp = [pr, pg, pb];
            if all(rgbp <= 255 & rgpb > 0)
                hist3(pr, pg, pb) = hist3(pr, pg, pb) + 1;
            else
                fprintf("error: pixel value was out of bounds...");
            end
        end
    end
end

